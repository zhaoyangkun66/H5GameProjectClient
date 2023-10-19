.class public final Lḓ/ཇ/ḓ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lḓ/㭲/உ;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lḓ/ཇ/ḓ$㚬;,
        Lḓ/ཇ/ḓ$உ;,
        Lḓ/ཇ/ḓ$䂻;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "L\u1e13/\u3b72/\u0b89<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field public final உ:Ljava/io/File;

.field public final ḓ:Lḓ/ᓭ/㚬/ბ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "L\u1e13/\u14ed/\u36ac/\u10d1<",
            "Ljava/io/File;",
            "Ljava/io/IOException;",
            "L\u1e13/\u39e6;",
            ">;"
        }
    .end annotation
.end field

.field public final 㚬:Lḓ/ᓭ/㚬/㹖;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "L\u1e13/\u14ed/\u36ac/\u3e56<",
            "Ljava/io/File;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final 㺴:Lḓ/ᓭ/㚬/㹖;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "L\u1e13/\u14ed/\u36ac/\u3e56<",
            "Ljava/io/File;",
            "L\u1e13/\u39e6;",
            ">;"
        }
    .end annotation
.end field

.field public final 䂻:Lḓ/ཇ/ᆻ;

.field public final 䆀:I


# direct methods
.method public constructor <init>(Ljava/io/File;Lḓ/ཇ/ᆻ;)V
    .locals 10

    const-string v0, "start"

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "direction"

    invoke-static {p2, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x20

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v9}, Lḓ/ཇ/ḓ;-><init>(Ljava/io/File;Lḓ/ཇ/ᆻ;Lḓ/ᓭ/㚬/㹖;Lḓ/ᓭ/㚬/㹖;Lḓ/ᓭ/㚬/ბ;IILḓ/ᓭ/㺴/ᆻ;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lḓ/ཇ/ᆻ;Lḓ/ᓭ/㚬/㹖;Lḓ/ᓭ/㚬/㹖;Lḓ/ᓭ/㚬/ბ;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "L\u1e13/\u0f47/\u11bb;",
            "L\u1e13/\u14ed/\u36ac/\u3e56<",
            "-",
            "Ljava/io/File;",
            "Ljava/lang/Boolean;",
            ">;",
            "L\u1e13/\u14ed/\u36ac/\u3e56<",
            "-",
            "Ljava/io/File;",
            "L\u1e13/\u39e6;",
            ">;",
            "L\u1e13/\u14ed/\u36ac/\u10d1<",
            "-",
            "Ljava/io/File;",
            "-",
            "Ljava/io/IOException;",
            "L\u1e13/\u39e6;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lḓ/ཇ/ḓ;->உ:Ljava/io/File;

    iput-object p2, p0, Lḓ/ཇ/ḓ;->䂻:Lḓ/ཇ/ᆻ;

    iput-object p3, p0, Lḓ/ཇ/ḓ;->㚬:Lḓ/ᓭ/㚬/㹖;

    iput-object p4, p0, Lḓ/ཇ/ḓ;->㺴:Lḓ/ᓭ/㚬/㹖;

    iput-object p5, p0, Lḓ/ཇ/ḓ;->ḓ:Lḓ/ᓭ/㚬/ბ;

    iput p6, p0, Lḓ/ཇ/ḓ;->䆀:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/File;Lḓ/ཇ/ᆻ;Lḓ/ᓭ/㚬/㹖;Lḓ/ᓭ/㚬/㹖;Lḓ/ᓭ/㚬/ბ;IILḓ/ᓭ/㺴/ᆻ;)V
    .locals 7

    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_0

    sget-object p2, Lḓ/ཇ/ᆻ;->䂻:Lḓ/ཇ/ᆻ;

    :cond_0
    move-object v2, p2

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_1

    const p6, 0x7fffffff

    const v6, 0x7fffffff

    goto :goto_0

    :cond_1
    move v6, p6

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lḓ/ཇ/ḓ;-><init>(Ljava/io/File;Lḓ/ཇ/ᆻ;Lḓ/ᓭ/㚬/㹖;Lḓ/ᓭ/㚬/㹖;Lḓ/ᓭ/㚬/ბ;I)V

    return-void
.end method

.method public static final synthetic உ(Lḓ/ཇ/ḓ;)Lḓ/ཇ/ᆻ;
    .locals 0

    iget-object p0, p0, Lḓ/ཇ/ḓ;->䂻:Lḓ/ཇ/ᆻ;

    return-object p0
.end method

.method public static final synthetic ḓ(Lḓ/ཇ/ḓ;)Lḓ/ᓭ/㚬/㹖;
    .locals 0

    iget-object p0, p0, Lḓ/ཇ/ḓ;->㺴:Lḓ/ᓭ/㚬/㹖;

    return-object p0
.end method

.method public static final synthetic 㚬(Lḓ/ཇ/ḓ;)Lḓ/ᓭ/㚬/㹖;
    .locals 0

    iget-object p0, p0, Lḓ/ཇ/ḓ;->㚬:Lḓ/ᓭ/㚬/㹖;

    return-object p0
.end method

.method public static final synthetic 㺴(Lḓ/ཇ/ḓ;)Lḓ/ᓭ/㚬/ბ;
    .locals 0

    iget-object p0, p0, Lḓ/ཇ/ḓ;->ḓ:Lḓ/ᓭ/㚬/ბ;

    return-object p0
.end method

.method public static final synthetic 䂻(Lḓ/ཇ/ḓ;)I
    .locals 0

    iget p0, p0, Lḓ/ཇ/ḓ;->䆀:I

    return p0
.end method

.method public static final synthetic 䆀(Lḓ/ཇ/ḓ;)Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lḓ/ཇ/ḓ;->உ:Ljava/io/File;

    return-object p0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    new-instance v0, Lḓ/ཇ/ḓ$䂻;

    invoke-direct {v0, p0}, Lḓ/ཇ/ḓ$䂻;-><init>(Lḓ/ཇ/ḓ;)V

    return-object v0
.end method
