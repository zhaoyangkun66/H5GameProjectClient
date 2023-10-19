.class public L㚬/ḙ/ᓭ$உ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/ḙ/ᓭ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u0b89"
.end annotation


# instance fields
.field public 㚬:Landroid/view/ViewGroup;

.field public 䂻:L㚬/ḙ/ἥ;


# direct methods
.method public constructor <init>(L㚬/ḙ/ἥ;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L㚬/ḙ/ᓭ$உ;->䂻:L㚬/ḙ/ἥ;

    iput-object p2, p0, L㚬/ḙ/ᓭ$உ;->㚬:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 5

    invoke-virtual {p0}, L㚬/ḙ/ᓭ$உ;->உ()V

    sget-object v0, L㚬/ḙ/ᓭ;->㚬:Ljava/util/ArrayList;

    iget-object v1, p0, L㚬/ḙ/ᓭ$உ;->㚬:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, L㚬/ḙ/ᓭ;->䂻()L㚬/䆀/உ;

    move-result-object v0

    iget-object v2, p0, L㚬/ḙ/ᓭ$உ;->㚬:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, L㚬/䆀/ᆻ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, L㚬/ḙ/ᓭ$உ;->㚬:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4, v2}, L㚬/䆀/ᆻ;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :cond_2
    :goto_0
    iget-object v4, p0, L㚬/ḙ/ᓭ$உ;->䂻:L㚬/ḙ/ἥ;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, L㚬/ḙ/ᓭ$உ;->䂻:L㚬/ḙ/ἥ;

    new-instance v4, L㚬/ḙ/ᓭ$உ$உ;

    invoke-direct {v4, p0, v0}, L㚬/ḙ/ᓭ$உ$உ;-><init>(L㚬/ḙ/ᓭ$உ;L㚬/䆀/உ;)V

    invoke-virtual {v2, v4}, L㚬/ḙ/ἥ;->உ(L㚬/ḙ/ἥ$䆀;)L㚬/ḙ/ἥ;

    iget-object v0, p0, L㚬/ḙ/ᓭ$உ;->䂻:L㚬/ḙ/ἥ;

    iget-object v2, p0, L㚬/ḙ/ᓭ$உ;->㚬:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, L㚬/ḙ/ἥ;->㧦(Landroid/view/ViewGroup;Z)V

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, L㚬/ḙ/ἥ;

    iget-object v3, p0, L㚬/ḙ/ᓭ$உ;->㚬:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, L㚬/ḙ/ἥ;->ἂ(Landroid/view/View;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, L㚬/ḙ/ᓭ$உ;->䂻:L㚬/ḙ/ἥ;

    iget-object v2, p0, L㚬/ḙ/ᓭ$உ;->㚬:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, L㚬/ḙ/ἥ;->ỷ(Landroid/view/ViewGroup;)V

    return v1
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, L㚬/ḙ/ᓭ$உ;->உ()V

    sget-object p1, L㚬/ḙ/ᓭ;->㚬:Ljava/util/ArrayList;

    iget-object v0, p0, L㚬/ḙ/ᓭ$உ;->㚬:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-static {}, L㚬/ḙ/ᓭ;->䂻()L㚬/䆀/உ;

    move-result-object p1

    iget-object v0, p0, L㚬/ḙ/ᓭ$உ;->㚬:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, L㚬/䆀/ᆻ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, L㚬/ḙ/ἥ;

    iget-object v1, p0, L㚬/ḙ/ᓭ$உ;->㚬:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, L㚬/ḙ/ἥ;->ἂ(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, L㚬/ḙ/ᓭ$உ;->䂻:L㚬/ḙ/ἥ;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, L㚬/ḙ/ἥ;->㹖(Z)V

    return-void
.end method

.method public final உ()V
    .locals 1

    iget-object v0, p0, L㚬/ḙ/ᓭ$உ;->㚬:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, L㚬/ḙ/ᓭ$உ;->㚬:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method
