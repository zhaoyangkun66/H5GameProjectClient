.class public L㺴/㚬/உ/䂻/㥁/ḓ$㚬;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㺴/㚬/உ/䂻/㥁/ḓ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u36ac"
.end annotation


# instance fields
.field public final உ:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "L\u3eb4/\u36ac/\u0b89/\u40bb/\u3941/\u1e13$\u40bb;",
            ">;"
        }
    .end annotation
.end field

.field public 㚬:Z

.field public 䂻:I


# virtual methods
.method public உ(L㺴/㚬/உ/䂻/㥁/ḓ$䂻;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, L㺴/㚬/உ/䂻/㥁/ḓ$㚬;->உ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
