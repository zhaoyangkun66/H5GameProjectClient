.class public L㚬/䂻/ბ/㲧$உ$உ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/䂻/ბ/㲧$உ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "\u0b89"
.end annotation


# instance fields
.field public final 㚬:Landroid/graphics/Typeface;

.field public final 䂻:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "L\u36ac/\u40bb/\u10d1/\u3ca7;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(L㚬/䂻/ბ/㲧$உ;Ljava/lang/ref/WeakReference;Landroid/graphics/Typeface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "L\u36ac/\u40bb/\u10d1/\u3ca7;",
            ">;",
            "Landroid/graphics/Typeface;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, L㚬/䂻/ბ/㲧$உ$உ;->䂻:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, L㚬/䂻/ბ/㲧$உ$உ;->㚬:Landroid/graphics/Typeface;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, L㚬/䂻/ბ/㲧$உ$உ;->䂻:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, L㚬/䂻/ბ/㲧;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, L㚬/䂻/ბ/㲧$உ$உ;->㚬:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, L㚬/䂻/ბ/㲧;->ᾦ(Landroid/graphics/Typeface;)V

    return-void
.end method
