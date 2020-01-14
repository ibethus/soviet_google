
package tuto.server.jaxws;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;

@XmlRootElement(name = "today", namespace = "http://server.tuto/")
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "today", namespace = "http://server.tuto/")
public class Today {


}
