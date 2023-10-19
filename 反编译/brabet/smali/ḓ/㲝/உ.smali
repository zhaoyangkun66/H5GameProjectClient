.class public Lḓ/㲝/உ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Iterable;
.implements Lḓ/ᓭ/㺴/㖪/உ;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/Character;",
        ">;",
        "L\u1e13/\u14ed/\u3eb4/\u35aa/\u0b89;"
    }
.end annotation


# instance fields
.field public final 㚬:C

.field public final 㺴:I

.field public final 䂻:C


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(CCI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_1

    const/high16 v0, -0x80000000

    if-eq p3, v0, :cond_0

    iput-char p1, p0, Lḓ/㲝/உ;->䂻:C

    invoke-static {p1, p2, p3}, Lḓ/ἥ/㚬;->䂻(III)I

    move-result p1

    int-to-char p1, p1

    iput-char p1, p0, Lḓ/㲝/உ;->㚬:C

    iput p3, p0, Lḓ/㲝/உ;->㺴:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Step must be greater than Int.MIN_VALUE to avoid overflow on negation."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Step must be non-zero."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lḓ/㲝/உ;->㚬()Lḓ/㹖/ㄏ;

    move-result-object v0

    return-object v0
.end method

.method public final உ()C
    .locals 1

    iget-char v0, p0, Lḓ/㲝/உ;->䂻:C

    return v0
.end method

.method public 㚬()Lḓ/㹖/ㄏ;
    .locals 4

    new-instance v0, Lḓ/㲝/䂻;

    iget-char v1, p0, Lḓ/㲝/உ;->䂻:C

    iget-char v2, p0, Lḓ/㲝/உ;->㚬:C

    iget v3, p0, Lḓ/㲝/உ;->㺴:I

    invoke-direct {v0, v1, v2, v3}, Lḓ/㲝/䂻;-><init>(CCI)V

    return-object v0
.end method

.method public final 䂻()C
    .locals 1

    iget-char v0, p0, Lḓ/㲝/உ;->㚬:C

    return v0
.end method
