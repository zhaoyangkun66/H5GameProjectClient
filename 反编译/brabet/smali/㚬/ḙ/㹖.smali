.class public L㚬/ḙ/㹖;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public உ:Landroid/view/ViewGroup;

.field public 䂻:Ljava/lang/Runnable;


# direct methods
.method public static 㚬(Landroid/view/ViewGroup;L㚬/ḙ/㹖;)V
    .locals 1

    sget v0, L㚬/ḙ/ಫ;->㚬:I

    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public static 䂻(Landroid/view/ViewGroup;)L㚬/ḙ/㹖;
    .locals 1

    sget v0, L㚬/ḙ/ಫ;->㚬:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, L㚬/ḙ/㹖;

    return-object p0
.end method


# virtual methods
.method public உ()V
    .locals 1

    iget-object v0, p0, L㚬/ḙ/㹖;->உ:Landroid/view/ViewGroup;

    invoke-static {v0}, L㚬/ḙ/㹖;->䂻(Landroid/view/ViewGroup;)L㚬/ḙ/㹖;

    move-result-object v0

    if-ne v0, p0, :cond_0

    iget-object v0, p0, L㚬/ḙ/㹖;->䂻:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
