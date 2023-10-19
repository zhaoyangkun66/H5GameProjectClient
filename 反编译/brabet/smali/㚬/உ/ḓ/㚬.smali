.class public abstract L㚬/உ/ḓ/㚬;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract உ()L㚬/உ/ḓ/䆀/உ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "L\u36ac/\u0b89/\u1e13/\u4180/\u0b89<",
            "TI;*>;"
        }
    .end annotation
.end method

.method public abstract 㚬(Ljava/lang/Object;L㚬/ℓ/㺴/䂻;)V
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;",
            "L\u36ac/\u2113/\u3eb4/\u40bb;",
            ")V"
        }
    .end annotation
.end method

.method public abstract 㺴()V
.end method

.method public 䂻(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, L㚬/உ/ḓ/㚬;->㚬(Ljava/lang/Object;L㚬/ℓ/㺴/䂻;)V

    return-void
.end method
