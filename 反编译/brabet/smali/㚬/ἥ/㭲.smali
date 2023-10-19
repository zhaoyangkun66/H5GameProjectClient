.class public L㚬/ἥ/㭲;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        L㚬/ἥ/㭲$உ;,
        L㚬/ἥ/㭲$㺴;,
        L㚬/ἥ/㭲$㚬;,
        L㚬/ἥ/㭲$ḓ;,
        L㚬/ἥ/㭲$䂻;
    }
.end annotation


# instance fields
.field public final உ:L㚬/ἥ/㭲$䂻;

.field public final 䂻:L㚬/ἥ/ḙ;


# direct methods
.method public constructor <init>(L㚬/ἥ/ḙ;L㚬/ἥ/㭲$䂻;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, L㚬/ἥ/㭲;->உ:L㚬/ἥ/㭲$䂻;

    iput-object p1, p0, L㚬/ἥ/㭲;->䂻:L㚬/ἥ/ḙ;

    return-void
.end method


# virtual methods
.method public உ(Ljava/lang/Class;)L㚬/ἥ/㞘;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "L\u36ac/\u1f25/\u3798;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, L㚬/ἥ/㭲;->䂻(Ljava/lang/String;Ljava/lang/Class;)L㚬/ἥ/㞘;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Local and anonymous classes can not be ViewModels"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public 䂻(Ljava/lang/String;Ljava/lang/Class;)L㚬/ἥ/㞘;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "L\u36ac/\u1f25/\u3798;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, L㚬/ἥ/㭲;->䂻:L㚬/ἥ/ḙ;

    invoke-virtual {v0, p1}, L㚬/ἥ/ḙ;->䂻(Ljava/lang/String;)L㚬/ἥ/㞘;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p0, L㚬/ἥ/㭲;->உ:L㚬/ἥ/㭲$䂻;

    instance-of p2, p1, L㚬/ἥ/㭲$ḓ;

    if-eqz p2, :cond_0

    check-cast p1, L㚬/ἥ/㭲$ḓ;

    invoke-virtual {p1, v0}, L㚬/ἥ/㭲$ḓ;->䂻(L㚬/ἥ/㞘;)V

    :cond_0
    return-object v0

    :cond_1
    iget-object v0, p0, L㚬/ἥ/㭲;->உ:L㚬/ἥ/㭲$䂻;

    instance-of v1, v0, L㚬/ἥ/㭲$㚬;

    if-eqz v1, :cond_2

    check-cast v0, L㚬/ἥ/㭲$㚬;

    invoke-virtual {v0, p1, p2}, L㚬/ἥ/㭲$㚬;->㚬(Ljava/lang/String;Ljava/lang/Class;)L㚬/ἥ/㞘;

    move-result-object p2

    goto :goto_0

    :cond_2
    invoke-interface {v0, p2}, L㚬/ἥ/㭲$䂻;->உ(Ljava/lang/Class;)L㚬/ἥ/㞘;

    move-result-object p2

    :goto_0
    iget-object v0, p0, L㚬/ἥ/㭲;->䂻:L㚬/ἥ/ḙ;

    invoke-virtual {v0, p1, p2}, L㚬/ἥ/ḙ;->㺴(Ljava/lang/String;L㚬/ἥ/㞘;)V

    return-object p2
.end method
