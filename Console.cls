global with sharing class Console {
    global static void log(Object value1) {
        Console.logValues(new List<Object> {value1});
    }

    global static void log(Object value1, Object value2) {
        Console.logValues(new List<Object> {value1, value2});
    }

    global static void log(Object value1, Object value2, Object value3) {
        Console.logValues(new List<Object> {value1, value2, value3});
    }

    global static void log(Object value1, Object value2, Object value3, Object value4) {
        Console.logValues(new List<Object> {value1, value2, value3, value4});
    }
    // keep overloading if you want

    private static void logValues(List<Object> objs) {
        String prefix = '';
        for (Object obj : objs) {
            System.debug(prefix + obj.toString());
            // Indent all lower level items
            if (prefix == '') {
                prefix = '↳';
            }
        }
    }
}
