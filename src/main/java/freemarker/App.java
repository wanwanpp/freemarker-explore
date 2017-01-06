package freemarker;

import freemarker.template.Configuration;
import freemarker.template.Template;
import freemarker.template.TemplateException;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.Writer;
import java.util.HashMap;
import java.util.Map;

/**
 * Hello world!
 */
public class App {
    public static void main(String[] args) throws IOException, TemplateException {
        Configuration configuration = new Configuration();
//        String dir = "F:\\freemarker\\ftl\\";
        String dir = "F:\\IDEA\\freemarker-初试\\src\\main\\java\\freemarker\\ftl\\";
        configuration.setDirectoryForTemplateLoading(new File(dir));
        Template template = configuration.getTemplate("freemarker.ftl");
        Writer out = new FileWriter(new File(dir+"hello.html"));
        Map root = new HashMap();

//        Person p= new Person();
//        p.setId(1);
//        p.setName("王萍");
//        root.put("person",p);


//        List<String> persons = new ArrayList<String>();
//        persons.add("范冰冰");
//        persons.add("李冰冰");
//        persons.add("何灵");
//        root.put("persons",persons);

//        Map map = new HashMap();
//        map.put("dd","DD");
//        map.put("bb","BB");
//        map.put("cc","CC");
//        root.put("map",map);

//        List<Map> maps = new ArrayList<Map>();
//        Map pms1 = new HashMap();
//        pms1.put("id1", "范冰冰");
//        pms1.put("id2", "李冰冰");
//        Map pms2 = new HashMap();
//        pms2.put("id1", "曾志伟");
//        pms2.put("id2", "何炅");
//        maps.add(pms1);
//        maps.add(pms2);
//        root.put("maps", maps);

//        List<String> persons = new ArrayList<String>();
//        persons.add("范冰冰");
//        persons.add("李冰冰");
//        persons.add("何灵");
//        root.put("persons", persons);

//        root.put("time",new Date());


//        root.put("val",1);
//        root.put("val",null);

        root.put("world","世界你好");
        template.process(root,out);
        out.flush();
        out.close();
    }
}
