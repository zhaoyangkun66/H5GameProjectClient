.class public L㚬/ḙ/ᓭ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        L㚬/ḙ/ᓭ$உ;
    }
.end annotation


# static fields
.field public static உ:L㚬/ḙ/ἥ;

.field public static 㚬:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field public static 䂻:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/ref/WeakReference<",
            "L\u36ac/\u4180/\u0b89<",
            "Landroid/view/ViewGroup;",
            "Ljava/util/ArrayList<",
            "L\u36ac/\u1e19/\u1f25;",
            ">;>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, L㚬/ḙ/䂻;

    invoke-direct {v0}, L㚬/ḙ/䂻;-><init>()V

    sput-object v0, L㚬/ḙ/ᓭ;->உ:L㚬/ḙ/ἥ;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, L㚬/ḙ/ᓭ;->䂻:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, L㚬/ḙ/ᓭ;->㚬:Ljava/util/ArrayList;

    return-void
.end method

.method public static உ(Landroid/view/ViewGroup;L㚬/ḙ/ἥ;)V
    .locals 1

    sget-object v0, L㚬/ḙ/ᓭ;->㚬:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, L㚬/ℓ/ἥ/㭲;->㖆(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, L㚬/ḙ/ᓭ;->㚬:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez p1, :cond_0

    sget-object p1, L㚬/ḙ/ᓭ;->உ:L㚬/ḙ/ἥ;

    :cond_0
    invoke-virtual {p1}, L㚬/ḙ/ἥ;->ἥ()L㚬/ḙ/ἥ;

    move-result-object p1

    invoke-static {p0, p1}, L㚬/ḙ/ᓭ;->㺴(Landroid/view/ViewGroup;L㚬/ḙ/ἥ;)V

    const/4 v0, 0x0

    invoke-static {p0, v0}, L㚬/ḙ/㹖;->㚬(Landroid/view/ViewGroup;L㚬/ḙ/㹖;)V

    invoke-static {p0, p1}, L㚬/ḙ/ᓭ;->㚬(Landroid/view/ViewGroup;L㚬/ḙ/ἥ;)V

    :cond_1
    return-void
.end method

.method public static 㚬(Landroid/view/ViewGroup;L㚬/ḙ/ἥ;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    new-instance v0, L㚬/ḙ/ᓭ$உ;

    invoke-direct {v0, p1, p0}, L㚬/ḙ/ᓭ$உ;-><init>(L㚬/ḙ/ἥ;Landroid/view/ViewGroup;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    return-void
.end method

.method public static 㺴(Landroid/view/ViewGroup;L㚬/ḙ/ἥ;)V
    .locals 2

    invoke-static {}, L㚬/ḙ/ᓭ;->䂻()L㚬/䆀/உ;

    move-result-object v0

    invoke-virtual {v0, p0}, L㚬/䆀/ᆻ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, L㚬/ḙ/ἥ;

    invoke-virtual {v1, p0}, L㚬/ḙ/ἥ;->Ԁ(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, L㚬/ḙ/ἥ;->㧦(Landroid/view/ViewGroup;Z)V

    :cond_1
    invoke-static {p0}, L㚬/ḙ/㹖;->䂻(Landroid/view/ViewGroup;)L㚬/ḙ/㹖;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, L㚬/ḙ/㹖;->உ()V

    :cond_2
    return-void
.end method

.method public static 䂻()L㚬/䆀/உ;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "L\u36ac/\u4180/\u0b89<",
            "Landroid/view/ViewGroup;",
            "Ljava/util/ArrayList<",
            "L\u36ac/\u1e19/\u1f25;",
            ">;>;"
        }
    .end annotation

    sget-object v0, L㚬/ḙ/ᓭ;->䂻:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, L㚬/䆀/உ;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, L㚬/䆀/உ;

    invoke-direct {v0}, L㚬/䆀/உ;-><init>()V

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sget-object v2, L㚬/ḙ/ᓭ;->䂻:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-object v0
.end method
