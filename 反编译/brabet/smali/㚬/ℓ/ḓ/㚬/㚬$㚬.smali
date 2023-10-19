.class public final L㚬/ℓ/ḓ/㚬/㚬$㚬;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/ℓ/ḓ/㚬/㚬;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "\u36ac"
.end annotation


# instance fields
.field public final உ:Ljava/lang/String;

.field public ḓ:I

.field public 㚬:Z

.field public 㺴:Ljava/lang/String;

.field public 䂻:I

.field public 䆀:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IZLjava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L㚬/ℓ/ḓ/㚬/㚬$㚬;->உ:Ljava/lang/String;

    iput p2, p0, L㚬/ℓ/ḓ/㚬/㚬$㚬;->䂻:I

    iput-boolean p3, p0, L㚬/ℓ/ḓ/㚬/㚬$㚬;->㚬:Z

    iput-object p4, p0, L㚬/ℓ/ḓ/㚬/㚬$㚬;->㺴:Ljava/lang/String;

    iput p5, p0, L㚬/ℓ/ḓ/㚬/㚬$㚬;->ḓ:I

    iput p6, p0, L㚬/ℓ/ḓ/㚬/㚬$㚬;->䆀:I

    return-void
.end method


# virtual methods
.method public உ()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, L㚬/ℓ/ḓ/㚬/㚬$㚬;->உ:Ljava/lang/String;

    return-object v0
.end method

.method public ḓ()I
    .locals 1

    iget v0, p0, L㚬/ℓ/ḓ/㚬/㚬$㚬;->䂻:I

    return v0
.end method

.method public 㚬()I
    .locals 1

    iget v0, p0, L㚬/ℓ/ḓ/㚬/㚬$㚬;->ḓ:I

    return v0
.end method

.method public 㺴()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, L㚬/ℓ/ḓ/㚬/㚬$㚬;->㺴:Ljava/lang/String;

    return-object v0
.end method

.method public 䂻()I
    .locals 1

    iget v0, p0, L㚬/ℓ/ḓ/㚬/㚬$㚬;->䆀:I

    return v0
.end method

.method public 䆀()Z
    .locals 1

    iget-boolean v0, p0, L㚬/ℓ/ḓ/㚬/㚬$㚬;->㚬:Z

    return v0
.end method
