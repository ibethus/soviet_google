
package tuto.client;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlElementDecl;
import javax.xml.bind.annotation.XmlRegistry;
import javax.xml.namespace.QName;


/**
 * This object contains factory methods for each 
 * Java content interface and Java element interface 
 * generated in the tuto.client package. 
 * <p>An ObjectFactory allows you to programatically 
 * construct new instances of the Java representation 
 * for XML content. The Java representation of XML 
 * content can consist of schema derived interfaces 
 * and classes representing the binding of schema 
 * type definitions, element declarations and model 
 * groups.  Factory methods for each of these are 
 * provided in this class.
 * 
 */
@XmlRegistry
public class ObjectFactory {

    private final static QName _GetLongDate_QNAME = new QName("http://server.tuto/", "getLongDate");
    private final static QName _GetLongDateResponse_QNAME = new QName("http://server.tuto/", "getLongDateResponse");
    private final static QName _Today_QNAME = new QName("http://server.tuto/", "today");
    private final static QName _TodayResponse_QNAME = new QName("http://server.tuto/", "todayResponse");

    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: tuto.client
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link GetLongDate }
     * 
     */
    public GetLongDate createGetLongDate() {
        return new GetLongDate();
    }

    /**
     * Create an instance of {@link GetLongDateResponse }
     * 
     */
    public GetLongDateResponse createGetLongDateResponse() {
        return new GetLongDateResponse();
    }

    /**
     * Create an instance of {@link Today }
     * 
     */
    public Today createToday() {
        return new Today();
    }

    /**
     * Create an instance of {@link TodayResponse }
     * 
     */
    public TodayResponse createTodayResponse() {
        return new TodayResponse();
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link GetLongDate }{@code >}
     * 
     * @param value
     *     Java instance representing xml element's value.
     * @return
     *     the new instance of {@link JAXBElement }{@code <}{@link GetLongDate }{@code >}
     */
    @XmlElementDecl(namespace = "http://server.tuto/", name = "getLongDate")
    public JAXBElement<GetLongDate> createGetLongDate(GetLongDate value) {
        return new JAXBElement<GetLongDate>(_GetLongDate_QNAME, GetLongDate.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link GetLongDateResponse }{@code >}
     * 
     * @param value
     *     Java instance representing xml element's value.
     * @return
     *     the new instance of {@link JAXBElement }{@code <}{@link GetLongDateResponse }{@code >}
     */
    @XmlElementDecl(namespace = "http://server.tuto/", name = "getLongDateResponse")
    public JAXBElement<GetLongDateResponse> createGetLongDateResponse(GetLongDateResponse value) {
        return new JAXBElement<GetLongDateResponse>(_GetLongDateResponse_QNAME, GetLongDateResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Today }{@code >}
     * 
     * @param value
     *     Java instance representing xml element's value.
     * @return
     *     the new instance of {@link JAXBElement }{@code <}{@link Today }{@code >}
     */
    @XmlElementDecl(namespace = "http://server.tuto/", name = "today")
    public JAXBElement<Today> createToday(Today value) {
        return new JAXBElement<Today>(_Today_QNAME, Today.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link TodayResponse }{@code >}
     * 
     * @param value
     *     Java instance representing xml element's value.
     * @return
     *     the new instance of {@link JAXBElement }{@code <}{@link TodayResponse }{@code >}
     */
    @XmlElementDecl(namespace = "http://server.tuto/", name = "todayResponse")
    public JAXBElement<TodayResponse> createTodayResponse(TodayResponse value) {
        return new JAXBElement<TodayResponse>(_TodayResponse_QNAME, TodayResponse.class, null, value);
    }

}
