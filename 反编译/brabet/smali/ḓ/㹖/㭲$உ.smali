.class public final Lḓ/㹖/㭲$உ;
.super Lḓ/ᓭ/㺴/㧦;
.source ""

# interfaces
.implements Lḓ/ᓭ/㚬/㹖;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lḓ/㹖/㭲;->㲝(Ljava/lang/Iterable;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "L\u1e13/\u14ed/\u3eb4/\u39e6;",
        "L\u1e13/\u14ed/\u36ac/\u3e56<",
        "Ljava/lang/Integer;",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic 䂻:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lḓ/㹖/㭲$உ;->䂻:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lḓ/ᓭ/㺴/㧦;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lḓ/㹖/㭲$உ;->䂻(I)Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1
.end method

.method public final 䂻(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Collection doesn\'t contain element at index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lḓ/㹖/㭲$உ;->䂻:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
