.class public L㚬/㖪/உ/உ/㺴$உ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/㖪/உ/உ/㺴;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u0b89"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator<",
        "[",
        "L\u36ac/\u2113/\u4180/\u36ac$\u40bb;",
        ">;"
    }
.end annotation


# instance fields
.field public உ:[L㚬/ℓ/䆀/㚬$䂻;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, [L㚬/ℓ/䆀/㚬$䂻;

    check-cast p3, [L㚬/ℓ/䆀/㚬$䂻;

    invoke-virtual {p0, p1, p2, p3}, L㚬/㖪/உ/உ/㺴$உ;->உ(F[L㚬/ℓ/䆀/㚬$䂻;[L㚬/ℓ/䆀/㚬$䂻;)[L㚬/ℓ/䆀/㚬$䂻;

    move-result-object p1

    return-object p1
.end method

.method public உ(F[L㚬/ℓ/䆀/㚬$䂻;[L㚬/ℓ/䆀/㚬$䂻;)[L㚬/ℓ/䆀/㚬$䂻;
    .locals 4

    invoke-static {p2, p3}, L㚬/ℓ/䆀/㚬;->䂻([L㚬/ℓ/䆀/㚬$䂻;[L㚬/ℓ/䆀/㚬$䂻;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, L㚬/㖪/உ/உ/㺴$உ;->உ:[L㚬/ℓ/䆀/㚬$䂻;

    invoke-static {v0, p2}, L㚬/ℓ/䆀/㚬;->䂻([L㚬/ℓ/䆀/㚬$䂻;[L㚬/ℓ/䆀/㚬$䂻;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, L㚬/ℓ/䆀/㚬;->䆀([L㚬/ℓ/䆀/㚬$䂻;)[L㚬/ℓ/䆀/㚬$䂻;

    move-result-object v0

    iput-object v0, p0, L㚬/㖪/உ/உ/㺴$உ;->உ:[L㚬/ℓ/䆀/㚬$䂻;

    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    iget-object v1, p0, L㚬/㖪/உ/உ/㺴$உ;->உ:[L㚬/ℓ/䆀/㚬$䂻;

    aget-object v1, v1, v0

    aget-object v2, p2, v0

    aget-object v3, p3, v0

    invoke-virtual {v1, v2, v3, p1}, L㚬/ℓ/䆀/㚬$䂻;->㺴(L㚬/ℓ/䆀/㚬$䂻;L㚬/ℓ/䆀/㚬$䂻;F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, L㚬/㖪/உ/உ/㺴$உ;->உ:[L㚬/ℓ/䆀/㚬$䂻;

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t interpolate between two incompatible pathData"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
