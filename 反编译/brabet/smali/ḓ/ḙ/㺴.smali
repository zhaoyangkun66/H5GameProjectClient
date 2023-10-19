.class public final Lḓ/ḙ/㺴;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lḓ/㭲/உ;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "L\u1e13/\u3b72/\u0b89<",
        "L\u1e13/\u3c9d/\u4180;",
        ">;"
    }
.end annotation


# instance fields
.field public final உ:Ljava/lang/CharSequence;

.field public final 㚬:I

.field public final 㺴:Lḓ/ᓭ/㚬/ბ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "L\u1e13/\u14ed/\u36ac/\u10d1<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Integer;",
            "L\u1e13/\u4180<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public final 䂻:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;IILḓ/ᓭ/㚬/ბ;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "II",
            "L\u1e13/\u14ed/\u36ac/\u10d1<",
            "-",
            "Ljava/lang/CharSequence;",
            "-",
            "Ljava/lang/Integer;",
            "L\u1e13/\u4180<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "input"

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getNextMatch"

    invoke-static {p4, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lḓ/ḙ/㺴;->உ:Ljava/lang/CharSequence;

    iput p2, p0, Lḓ/ḙ/㺴;->䂻:I

    iput p3, p0, Lḓ/ḙ/㺴;->㚬:I

    iput-object p4, p0, Lḓ/ḙ/㺴;->㺴:Lḓ/ᓭ/㚬/ბ;

    return-void
.end method

.method public static final synthetic உ(Lḓ/ḙ/㺴;)Lḓ/ᓭ/㚬/ბ;
    .locals 0

    iget-object p0, p0, Lḓ/ḙ/㺴;->㺴:Lḓ/ᓭ/㚬/ბ;

    return-object p0
.end method

.method public static final synthetic 㚬(Lḓ/ḙ/㺴;)I
    .locals 0

    iget p0, p0, Lḓ/ḙ/㺴;->㚬:I

    return p0
.end method

.method public static final synthetic 㺴(Lḓ/ḙ/㺴;)I
    .locals 0

    iget p0, p0, Lḓ/ḙ/㺴;->䂻:I

    return p0
.end method

.method public static final synthetic 䂻(Lḓ/ḙ/㺴;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lḓ/ḙ/㺴;->உ:Ljava/lang/CharSequence;

    return-object p0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "L\u1e13/\u3c9d/\u4180;",
            ">;"
        }
    .end annotation

    new-instance v0, Lḓ/ḙ/㺴$உ;

    invoke-direct {v0, p0}, Lḓ/ḙ/㺴$உ;-><init>(Lḓ/ḙ/㺴;)V

    return-object v0
.end method
