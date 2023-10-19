.class public L㚬/ℓ/ಫ/䂻$䂻;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements L㚬/ℓ/ಫ/㚬$㺴;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = L㚬/ℓ/ಫ/䂻;->ᆻ(Landroid/content/Context;L㚬/ℓ/ಫ/உ;L㚬/ℓ/ḓ/㚬/䆀$உ;Landroid/os/Handler;ZII)Landroid/graphics/Typeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "L\u36ac/\u2113/\u0cab/\u36ac$\u3eb4<",
        "L\u36ac/\u2113/\u0cab/\u40bb$\u11bb;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic உ:L㚬/ℓ/ḓ/㚬/䆀$உ;

.field public final synthetic 䂻:Landroid/os/Handler;


# direct methods
.method public constructor <init>(L㚬/ℓ/ḓ/㚬/䆀$உ;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, L㚬/ℓ/ಫ/䂻$䂻;->உ:L㚬/ℓ/ḓ/㚬/䆀$உ;

    iput-object p2, p0, L㚬/ℓ/ಫ/䂻$䂻;->䂻:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic உ(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, L㚬/ℓ/ಫ/䂻$ᆻ;

    invoke-virtual {p0, p1}, L㚬/ℓ/ಫ/䂻$䂻;->䂻(L㚬/ℓ/ಫ/䂻$ᆻ;)V

    return-void
.end method

.method public 䂻(L㚬/ℓ/ಫ/䂻$ᆻ;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object p1, p0, L㚬/ℓ/ಫ/䂻$䂻;->உ:L㚬/ℓ/ḓ/㚬/䆀$உ;

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, L㚬/ℓ/ಫ/䂻$䂻;->䂻:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1}, L㚬/ℓ/ḓ/㚬/䆀$உ;->உ(ILandroid/os/Handler;)V

    goto :goto_1

    :cond_0
    iget v0, p1, L㚬/ℓ/ಫ/䂻$ᆻ;->䂻:I

    if-nez v0, :cond_1

    iget-object v0, p0, L㚬/ℓ/ಫ/䂻$䂻;->உ:L㚬/ℓ/ḓ/㚬/䆀$உ;

    iget-object p1, p1, L㚬/ℓ/ಫ/䂻$ᆻ;->உ:Landroid/graphics/Typeface;

    iget-object v1, p0, L㚬/ℓ/ಫ/䂻$䂻;->䂻:Landroid/os/Handler;

    invoke-virtual {v0, p1, v1}, L㚬/ℓ/ḓ/㚬/䆀$உ;->䂻(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, L㚬/ℓ/ಫ/䂻$䂻;->உ:L㚬/ℓ/ḓ/㚬/䆀$உ;

    goto :goto_0

    :goto_1
    return-void
.end method
