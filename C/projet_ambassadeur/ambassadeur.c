#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>
#include <assert.h>
#include "ambassadeur.h"

#define TAILLE_LISTE_DEPART 10

const char *pathname;
struct set_ambassadeur listeAmbassadeurs;
struct set_ambassadeur *ptrListeAmbassadeurs = &listeAmbassadeurs;

struct ambassadeur ambassadeur;
struct ambassadeur *temp_ambassadeur = &ambassadeur;

struct ambassadeur
{
    char *nomination;
    char *nom;
    char *pays;
    char *sexe;
};

struct set_ambassadeur
{
    int size;
    int capacity;
    struct ambassadeur *elem_ambassadeur;
};

/* Allocation mem temp_ambassadeur*/
void init_ambassadeur(){
    temp_ambassadeur->nom = malloc(sizeof(temp_ambassadeur->nom));
    temp_ambassadeur->nomination = malloc(sizeof(temp_ambassadeur->nomination));
    temp_ambassadeur->pays = malloc(sizeof(temp_ambassadeur->pays));
    temp_ambassadeur->sexe = malloc(sizeof(temp_ambassadeur->sexe));
    
}

/* Initialisation de la "liste" */
void set_init(struct set_ambassadeur *s)
{
    s->size = 0;
    s->capacity = 0;
    s->elem_ambassadeur = NULL;
}

/* Fonction auxiliaire permettant de déterminer l'index du prochain 
élément à ajouter, si c'est possible */
int aux_set_index_of(struct set_ambassadeur *s, char *string)
{
    int index = s->size - 1;

    /* On vérifie si le pays que l'on cherche à ajouter existe déjà dans la liste */
    while (index >= 0 && strcmp(string, s->elem_ambassadeur[index].pays) != 0)
    {
        index = index - 1;
    }
    return index;
}

/* Méthode auxiliaire permettant d'augmenter la taille de la liste */
void set_aux_enlarge(struct set_ambassadeur *s){
    int new_capacity = s->capacity == 0 ? TAILLE_LISTE_DEPART : 2 * s->capacity;
    int new_size = new_capacity * sizeof(struct ambassadeur);
    s->capacity = new_capacity;
    s->elem_ambassadeur = realloc(s->elem_ambassadeur, new_size);
    assert(s->elem_ambassadeur != NULL);
}

/* Ajout d'un ambassadeur dans la liste */
void set_add(struct set_ambassadeur *s, struct ambassadeur *a)
{
    int index = aux_set_index_of(s, a->pays);

    /* On vérifie que le pays est question n'a pas déjà été enregistré dans la liste */
    if (index < 0)
    {

        /* Si la liste est trop petite, on l'agrandit */
        if (s->size == s->capacity)
        {
            set_aux_enlarge(s);
        }

        /* Enfin, on copie l'ambassadeur dans le set*/
        s->elem_ambassadeur[s->size] = *a;

        /* Enfin, on augmente la taille occupée par la liste */
        s->size += 1;
    }
}

/* Méthode pour imprimer le set */
void print_set(struct set_ambassadeur *s){
    for (int i = 0; i < s->size; i++){
        printf("Nom : %s\n", s->elem_ambassadeur[i].nom);
        printf("Pays : %s\n", s->elem_ambassadeur[i].pays);
        printf("Sexe : %s\n", s->elem_ambassadeur[i].sexe);
        printf("Nomination : %s\n", s->elem_ambassadeur[i].nomination);
    }
}

int main(int argc, char *argv[])
{
    char buffer[32];
    char *line = buffer;
    size_t taille = 0;

    if (argc != 2)
    {
        printf("Le nombre d'arguments n'est pas correct\n");
        printf("Usage : ambassadeur arg1: chemin/fichier.csv\n");
        exit(EXIT_FAILURE);
    }

    printf("Fichier chargé : %s\n", argv[1]);
    pathname = argv[1];

    FILE *fichierAmbassadeurs = fopen(pathname, "r");
    if (fichierAmbassadeurs == NULL)
    {
        exit(EXIT_FAILURE);
    }

    init_ambassadeur();
    set_init(ptrListeAmbassadeurs);

    while (getline(&line, &taille, fichierAmbassadeurs) > 0)
    {
        decoupage_ligne(line, '\t');
    }
    fclose(fichierAmbassadeurs);
    free(line);

    print_set(ptrListeAmbassadeurs);
}

void decoupage_ligne(char ligne[], char separateur)
{
    int numero = 1;
    bool isNomine = false;
    bool isEnPoste = false;

    char *debut_champ = ligne;
    for (char *p = ligne; *p != '\0'; p++)
    {

        if (*p == separateur)
        {
            *p = '\0';

            if (numero == 3)
            {
                strcpy(temp_ambassadeur->nomination, debut_champ);
            }

            if (numero == 4 && strcmp(debut_champ, "nomination") == 0)
            {
                isNomine = true;
            }
            if (isNomine)
            {
                if (numero == 5)
                {
                    strcpy(temp_ambassadeur->sexe, debut_champ);
                }
                if (numero == 8)
                {
                    strcpy(temp_ambassadeur->nom, debut_champ);
                }
                if (numero == 12)
                {
                    /*On vérifie que le pays est bien renseigné, sinon, l'ambassadeur est ignoré*/
                    if (strlen(debut_champ) == 0)
                    {
                        isNomine = false;
                    }
                    else
                    {
                        strcpy(temp_ambassadeur->pays, debut_champ);
                    }
                }
            }
            debut_champ = p + 1;
            numero += 1;
        }
    }
    if (isNomine)
    {
        set_add(ptrListeAmbassadeurs, temp_ambassadeur);
    }
}