.class public abstract L㚬/ℓ/ἥ/㭲$䆀;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/ℓ/ἥ/㭲;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "\u4180"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final உ:I

.field public final 㚬:I

.field public final 䂻:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/Class;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "TT;>;I)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, L㚬/ℓ/ἥ/㭲$䆀;-><init>(ILjava/lang/Class;II)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/Class;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "TT;>;II)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, L㚬/ℓ/ἥ/㭲$䆀;->உ:I

    iput-object p2, p0, L㚬/ℓ/ἥ/㭲$䆀;->䂻:Ljava/lang/Class;

    iput p4, p0, L㚬/ℓ/ἥ/㭲$䆀;->㚬:I

    return-void
.end method


# virtual methods
.method public உ(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    :goto_0
    if-nez p2, :cond_1

    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    :goto_1
    if-ne p1, p2, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public ᆻ(Landroid/view/View;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "TT;)V"
        }
    .end annotation

    invoke-virtual {p0}, L㚬/ℓ/ἥ/㭲$䆀;->㚬()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, L㚬/ℓ/ἥ/㭲$䆀;->ḓ(Landroid/view/View;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, L㚬/ℓ/ἥ/㭲$䆀;->䂻()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, L㚬/ℓ/ἥ/㭲$䆀;->䆀(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, L㚬/ℓ/ἥ/㭲$䆀;->ℓ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, L㚬/ℓ/ἥ/㭲;->㫏(Landroid/view/View;)L㚬/ℓ/ἥ/உ;

    iget v0, p0, L㚬/ℓ/ἥ/㭲$䆀;->உ:I

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const/4 p2, 0x0

    invoke-static {p1, p2}, L㚬/ℓ/ἥ/㭲;->ỷ(Landroid/view/View;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public abstract ḓ(Landroid/view/View;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "TT;)V"
        }
    .end annotation
.end method

.method public abstract ℓ(Ljava/lang/Object;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation
.end method

.method public final 㚬()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget v1, p0, L㚬/ℓ/ἥ/㭲$䆀;->㚬:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract 㺴(Landroid/view/View;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")TT;"
        }
    .end annotation
.end method

.method public final 䂻()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public 䆀(Landroid/view/View;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p0}, L㚬/ℓ/ἥ/㭲$䆀;->㚬()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, L㚬/ℓ/ἥ/㭲$䆀;->㺴(Landroid/view/View;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, L㚬/ℓ/ἥ/㭲$䆀;->䂻()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, L㚬/ℓ/ἥ/㭲$䆀;->உ:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, L㚬/ℓ/ἥ/㭲$䆀;->䂻:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
