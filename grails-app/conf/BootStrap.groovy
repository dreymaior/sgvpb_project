import grails.util.GrailsUtil
import sgvpb_project.*


class BootStrap {

  def init = { servletContext ->
    switch(GrailsUtil.environment){
      case "development":
        def jdoe = new User(login:"jdoe", password:"password", person:2)
        def e1 = new Entry(title:"Grails 1.1 beta is out", 
           summary:"Check out the new features")
        def e2 = new Entry(title:"Just Released - Groovy 1.6 beta 2", 
           summary:"It is looking good.")
        jdoe.addToEntries(e1)
        jdoe.addToEntries(e2)
        jdoe.save()
        
        def jsmith = new User(login:"jsmith", password:"wordpass", person:1)
        def e3 = new Entry(title:"Codecs in Grails", summary:"See Mastering Grails")
        def e4 = new Entry(title:"Testing with Groovy", summary:"See Practically Groovy")
        jsmith.addToEntries(e3)
        jsmith.addToEntries(e4)
        jsmith.save()              
      break

      case "production":
      break
    }

  }
  def destroy = {
  }
}