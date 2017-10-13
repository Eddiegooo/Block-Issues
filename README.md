# Block-Issues
###Block使用过程中偶然发现了一个问题

#### 定义Block的时候，没带参数，但是在使用的时候，不小心传了一个参数，这时候可能会出现问题。

1.当使用的时候，传了一个参数，但是这个参数没有使用，在debug模式下没问题，但是在release模式下就会崩溃。
2.当使用的时候，传了一个参数，并且也使用了这个参数，直接崩溃。


## 特别是1 问题， 完全懵逼 不懂什么意思。。。

####具体问题在TestBlock工程里有写了，哪位大神懂，还请不吝赐教，O(∩_∩)O谢谢



#### 有些朋友给出的解释：

1.debug模式和release模式有些不一样。debug模式，内存释放是有延时的，release模式内存是立即释放的。 所以在release模式下，那个立马变成就变成了野指针，你在访问的话，就直接崩了。
2.定义没有参数，但是调用的时候可以传参，运行不报错的解释：**block是个类似函数指针，它指向的是一个内存地址，它的数据结构是个结构体，有一个指向参数的指针，也是个地址，只要是给他一个内存地址就能满足要求了**  

不知道对错哦 O(∩_∩)O哈哈~ 


#### 升级Xcode9之后就可以很好的避免这种情况了，在Xcode9之后，定义Block没有返回值，必须写上void，不然会报警告。
