.class public final Lḓ/ḙ/ᓭ$உ;
.super Lḓ/ᓭ/㺴/㧦;
.source ""

# interfaces
.implements Lḓ/ᓭ/㚬/ბ;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lḓ/ḙ/ᓭ;->ᰘ(Ljava/lang/CharSequence;[CIZI)Lḓ/㭲/உ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "L\u1e13/\u14ed/\u3eb4/\u39e6;",
        "L\u1e13/\u14ed/\u36ac/\u10d1<",
        "Ljava/lang/CharSequence;",
        "Ljava/lang/Integer;",
        "L\u1e13/\u4180<",
        "+",
        "Ljava/lang/Integer;",
        "+",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic 㚬:Z

.field public final synthetic 䂻:[C


# direct methods
.method public constructor <init>([CZ)V
    .locals 0

    iput-object p1, p0, Lḓ/ḙ/ᓭ$உ;->䂻:[C

    iput-boolean p2, p0, Lḓ/ḙ/ᓭ$உ;->㚬:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lḓ/ᓭ/㺴/㧦;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/CharSequence;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lḓ/ḙ/ᓭ$உ;->䂻(Ljava/lang/CharSequence;I)Lḓ/䆀;

    move-result-object p1

    return-object p1
.end method

.method public final 䂻(Ljava/lang/CharSequence;I)Lḓ/䆀;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "I)",
            "L\u1e13/\u4180<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lḓ/ḙ/ᓭ$உ;->䂻:[C

    iget-boolean v1, p0, Lḓ/ḙ/ᓭ$உ;->㚬:Z

    invoke-static {p1, v0, p2, v1}, Lḓ/ḙ/ᓭ;->ಋ(Ljava/lang/CharSequence;[CIZ)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Lḓ/ℓ;->உ(Ljava/lang/Object;Ljava/lang/Object;)Lḓ/䆀;

    move-result-object p1

    :goto_0
    return-object p1
.end method
