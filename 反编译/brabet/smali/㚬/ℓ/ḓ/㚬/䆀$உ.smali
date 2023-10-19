.class public abstract L㚬/ℓ/ḓ/㚬/䆀$உ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/ℓ/ḓ/㚬/䆀;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "\u0b89"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final உ(ILandroid/os/Handler;)V
    .locals 1

    if-nez p2, :cond_0

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    :cond_0
    new-instance v0, L㚬/ℓ/ḓ/㚬/䆀$உ$䂻;

    invoke-direct {v0, p0, p1}, L㚬/ℓ/ḓ/㚬/䆀$உ$䂻;-><init>(L㚬/ℓ/ḓ/㚬/䆀$உ;I)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public abstract 㚬(I)V
.end method

.method public abstract 㺴(Landroid/graphics/Typeface;)V
.end method

.method public final 䂻(Landroid/graphics/Typeface;Landroid/os/Handler;)V
    .locals 1

    if-nez p2, :cond_0

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    :cond_0
    new-instance v0, L㚬/ℓ/ḓ/㚬/䆀$உ$உ;

    invoke-direct {v0, p0, p1}, L㚬/ℓ/ḓ/㚬/䆀$உ$உ;-><init>(L㚬/ℓ/ḓ/㚬/䆀$உ;Landroid/graphics/Typeface;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
