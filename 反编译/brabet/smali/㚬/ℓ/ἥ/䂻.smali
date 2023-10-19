.class public abstract L㚬/ℓ/ἥ/䂻;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        L㚬/ℓ/ἥ/䂻$䂻;,
        L㚬/ℓ/ἥ/䂻$உ;
    }
.end annotation


# instance fields
.field public உ:L㚬/ℓ/ἥ/䂻$䂻;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public உ()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public ಫ(L㚬/ℓ/ἥ/䂻$䂻;)V
    .locals 2

    iget-object v0, p0, L㚬/ℓ/ἥ/䂻;->உ:L㚬/ℓ/ἥ/䂻$䂻;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVisibilityListener: Setting a new ActionProvider.VisibilityListener when one is already set. Are you reusing this "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " instance while it is still in use somewhere else?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActionProvider(support)"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, L㚬/ℓ/ἥ/䂻;->உ:L㚬/ℓ/ἥ/䂻$䂻;

    return-void
.end method

.method public ᆻ()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public ḓ()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public ℓ()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, L㚬/ℓ/ἥ/䂻;->உ:L㚬/ℓ/ἥ/䂻$䂻;

    return-void
.end method

.method public ㄏ(L㚬/ℓ/ἥ/䂻$உ;)V
    .locals 0

    return-void
.end method

.method public abstract 㚬()Landroid/view/View;
.end method

.method public 㺴(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, L㚬/ℓ/ἥ/䂻;->㚬()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public 䂻()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public 䆀(Landroid/view/SubMenu;)V
    .locals 0

    return-void
.end method
