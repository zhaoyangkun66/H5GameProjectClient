.class public final L㚬/ℓ/㧦/உ$உ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/ℓ/㧦/உ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "\u0b89"
.end annotation


# instance fields
.field public உ:Z

.field public 㚬:L㚬/ℓ/㧦/㺴;

.field public 䂻:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, L㚬/ℓ/㧦/உ;->ḓ(Ljava/util/Locale;)Z

    move-result v0

    invoke-virtual {p0, v0}, L㚬/ℓ/㧦/உ$உ;->㚬(Z)V

    return-void
.end method

.method public static 䂻(Z)L㚬/ℓ/㧦/உ;
    .locals 0

    if-eqz p0, :cond_0

    sget-object p0, L㚬/ℓ/㧦/உ;->ℓ:L㚬/ℓ/㧦/உ;

    goto :goto_0

    :cond_0
    sget-object p0, L㚬/ℓ/㧦/உ;->ᆻ:L㚬/ℓ/㧦/உ;

    :goto_0
    return-object p0
.end method


# virtual methods
.method public உ()L㚬/ℓ/㧦/உ;
    .locals 4

    iget v0, p0, L㚬/ℓ/㧦/உ$உ;->䂻:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, L㚬/ℓ/㧦/உ$உ;->㚬:L㚬/ℓ/㧦/㺴;

    sget-object v1, L㚬/ℓ/㧦/உ;->㺴:L㚬/ℓ/㧦/㺴;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, L㚬/ℓ/㧦/உ$உ;->உ:Z

    invoke-static {v0}, L㚬/ℓ/㧦/உ$உ;->䂻(Z)L㚬/ℓ/㧦/உ;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, L㚬/ℓ/㧦/உ;

    iget-boolean v1, p0, L㚬/ℓ/㧦/உ$உ;->உ:Z

    iget v2, p0, L㚬/ℓ/㧦/உ$உ;->䂻:I

    iget-object v3, p0, L㚬/ℓ/㧦/உ$உ;->㚬:L㚬/ℓ/㧦/㺴;

    invoke-direct {v0, v1, v2, v3}, L㚬/ℓ/㧦/உ;-><init>(ZIL㚬/ℓ/㧦/㺴;)V

    return-object v0
.end method

.method public final 㚬(Z)V
    .locals 0

    iput-boolean p1, p0, L㚬/ℓ/㧦/உ$உ;->உ:Z

    sget-object p1, L㚬/ℓ/㧦/உ;->㺴:L㚬/ℓ/㧦/㺴;

    iput-object p1, p0, L㚬/ℓ/㧦/உ$உ;->㚬:L㚬/ℓ/㧦/㺴;

    const/4 p1, 0x2

    iput p1, p0, L㚬/ℓ/㧦/உ$உ;->䂻:I

    return-void
.end method
