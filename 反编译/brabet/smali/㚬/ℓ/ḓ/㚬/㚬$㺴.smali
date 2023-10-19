.class public final L㚬/ℓ/ḓ/㚬/㚬$㺴;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements L㚬/ℓ/ḓ/㚬/㚬$உ;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/ℓ/ḓ/㚬/㚬;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "\u3eb4"
.end annotation


# instance fields
.field public final உ:L㚬/ℓ/ಫ/உ;

.field public final 㚬:I

.field public final 䂻:I


# direct methods
.method public constructor <init>(L㚬/ℓ/ಫ/உ;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L㚬/ℓ/ḓ/㚬/㚬$㺴;->உ:L㚬/ℓ/ಫ/உ;

    iput p2, p0, L㚬/ℓ/ḓ/㚬/㚬$㺴;->㚬:I

    iput p3, p0, L㚬/ℓ/ḓ/㚬/㚬$㺴;->䂻:I

    return-void
.end method


# virtual methods
.method public உ()I
    .locals 1

    iget v0, p0, L㚬/ℓ/ḓ/㚬/㚬$㺴;->㚬:I

    return v0
.end method

.method public 㚬()I
    .locals 1

    iget v0, p0, L㚬/ℓ/ḓ/㚬/㚬$㺴;->䂻:I

    return v0
.end method

.method public 䂻()L㚬/ℓ/ಫ/உ;
    .locals 1

    iget-object v0, p0, L㚬/ℓ/ḓ/㚬/㚬$㺴;->உ:L㚬/ℓ/ಫ/உ;

    return-object v0
.end method
