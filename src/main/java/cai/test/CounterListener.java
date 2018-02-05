package cai.test;

import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

/**
 * 使用监听器 实现计数器功能
 *
 * 统计在线人数
 */

/**
 * 请描述java时间监听机制：
 *
 * 监听器Listener就是在application,session,request三个对象创建、
 * 销毁或者往其中添加修改删除属性时自动执行代码的功能组件。
 Listener是Servlet的监听器，可以监听客户端的请求，服务端的操作等。

 ServletContext监听
 ServletContextListener：用于对Servlet整个上下文进行监听（创建、销毁）。

 ServletContextAttributeListener：对Servlet上下文属性的监听（增删改属性）。

 Session监听
 Session属于http协议下的内容，接口位于javax.servlet.http.*包下。
 HttpSessionListener接口：对Session的整体状态的监听。

 Request监听
 ServletRequestListener：用于对Request请求进行监听（创建、销毁）。

 1.事件监听涉及到三个组件：事件源、事件对象、事件监听器
 2.当事件源上发生某个动作时，它会调用事件监听器的一个方法，并在调用该方法时把事件对象传递进去，
 开发人员在监听器中通过事件对象，就可以拿到事件源，从而对事件源进行操作。事件对象封装事件源和动作，
 而监听器对象通过事件对象对事件源进行处理。


 作者：yjaal
 链接：https://www.jianshu.com/p/926c4b60b69a
 來源：简书
 著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。



 监听器 和过滤器
 作者：奋斗的老王
 链接：https://www.jianshu.com/p/854a16ef722a
 來源：简书
 著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。
 */
public class CounterListener implements HttpSessionListener {

    public static int count;

    public CounterListener(){
        count=0;
    }
    @Override
    public void sessionCreated(HttpSessionEvent httpSessionEvent) {
        count++;
    }

    @Override
    public void sessionDestroyed(HttpSessionEvent httpSessionEvent) {
        if (count>0){
            count--;
        }
    }
}
