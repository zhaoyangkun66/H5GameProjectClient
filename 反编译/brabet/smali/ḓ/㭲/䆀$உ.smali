.class public final Lḓ/㭲/䆀$உ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Iterable;
.implements Lḓ/ᓭ/㺴/㖪/உ;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lḓ/㭲/䆀;->உ(Lḓ/㭲/உ;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TT;>;",
        "L\u1e13/\u14ed/\u3eb4/\u35aa/\u0b89;"
    }
.end annotation


# instance fields
.field public final synthetic 䂻:Lḓ/㭲/உ;


# direct methods
.method public constructor <init>(Lḓ/㭲/உ;)V
    .locals 0

    iput-object p1, p0, Lḓ/㭲/䆀$உ;->䂻:Lḓ/㭲/உ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lḓ/㭲/䆀$உ;->䂻:Lḓ/㭲/உ;

    invoke-interface {v0}, Lḓ/㭲/உ;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
