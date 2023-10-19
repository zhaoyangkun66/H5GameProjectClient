.class public abstract L㚬/ℓ/㧦/ḓ$㺴;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements L㚬/ℓ/㧦/㺴;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/ℓ/㧦/ḓ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "\u3eb4"
.end annotation


# instance fields
.field public final உ:L㚬/ℓ/㧦/ḓ$㚬;


# direct methods
.method public constructor <init>(L㚬/ℓ/㧦/ḓ$㚬;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L㚬/ℓ/㧦/ḓ$㺴;->உ:L㚬/ℓ/㧦/ḓ$㚬;

    return-void
.end method


# virtual methods
.method public உ(Ljava/lang/CharSequence;II)Z
    .locals 1

    if-eqz p1, :cond_1

    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sub-int/2addr v0, p3

    if-lt v0, p2, :cond_1

    iget-object v0, p0, L㚬/ℓ/㧦/ḓ$㺴;->உ:L㚬/ℓ/㧦/ḓ$㚬;

    if-nez v0, :cond_0

    invoke-virtual {p0}, L㚬/ℓ/㧦/ḓ$㺴;->䂻()Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, L㚬/ℓ/㧦/ḓ$㺴;->㚬(Ljava/lang/CharSequence;II)Z

    move-result p1

    return p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final 㚬(Ljava/lang/CharSequence;II)Z
    .locals 1

    iget-object v0, p0, L㚬/ℓ/㧦/ḓ$㺴;->உ:L㚬/ℓ/㧦/ḓ$㚬;

    invoke-interface {v0, p1, p2, p3}, L㚬/ℓ/㧦/ḓ$㚬;->உ(Ljava/lang/CharSequence;II)I

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    if-eq p1, p2, :cond_0

    invoke-virtual {p0}, L㚬/ℓ/㧦/ḓ$㺴;->䂻()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    return p2
.end method

.method public abstract 䂻()Z
.end method
