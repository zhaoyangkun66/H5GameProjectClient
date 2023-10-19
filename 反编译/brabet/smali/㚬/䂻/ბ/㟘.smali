.class public L㚬/䂻/ბ/㟘;
.super L㚬/䂻/ბ/Խ;
.source ""


# instance fields
.field public final 䂻:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 0

    invoke-direct {p0, p2}, L㚬/䂻/ბ/Խ;-><init>(Landroid/content/res/Resources;)V

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, L㚬/䂻/ბ/㟘;->䂻:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 3

    invoke-super {p0, p1}, L㚬/䂻/ბ/Խ;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, L㚬/䂻/ბ/㟘;->䂻:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-static {}, L㚬/䂻/ბ/㭢;->ℓ()L㚬/䂻/ბ/㭢;

    move-result-object v2

    invoke-virtual {v2, v1, p1, v0}, L㚬/䂻/ბ/㭢;->㲧(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z

    :cond_0
    return-object v0
.end method
