.class public abstract L㚬/ἥ/㭲$㚬;
.super L㚬/ἥ/㭲$ḓ;
.source ""

# interfaces
.implements L㚬/ἥ/㭲$䂻;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/ἥ/㭲;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "\u36ac"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, L㚬/ἥ/㭲$ḓ;-><init>()V

    return-void
.end method


# virtual methods
.method public உ(Ljava/lang/Class;)L㚬/ἥ/㞘;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "L\u36ac/\u1f25/\u3798;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "create(String, Class<?>) must be called on implementaions of KeyedFactory"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract 㚬(Ljava/lang/String;Ljava/lang/Class;)L㚬/ἥ/㞘;
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
.end method
