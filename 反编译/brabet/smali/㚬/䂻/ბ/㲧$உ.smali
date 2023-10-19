.class public L㚬/䂻/ბ/㲧$உ;
.super L㚬/ℓ/ḓ/㚬/䆀$உ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/䂻/ბ/㲧;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u0b89"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        L㚬/䂻/ბ/㲧$உ$உ;
    }
.end annotation


# instance fields
.field public final உ:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "L\u36ac/\u40bb/\u10d1/\u3ca7;",
            ">;"
        }
    .end annotation
.end field

.field public final 㚬:I

.field public final 䂻:I


# direct methods
.method public constructor <init>(L㚬/䂻/ბ/㲧;II)V
    .locals 1

    invoke-direct {p0}, L㚬/ℓ/ḓ/㚬/䆀$உ;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, L㚬/䂻/ბ/㲧$உ;->உ:Ljava/lang/ref/WeakReference;

    iput p2, p0, L㚬/䂻/ბ/㲧$உ;->䂻:I

    iput p3, p0, L㚬/䂻/ბ/㲧$உ;->㚬:I

    return-void
.end method


# virtual methods
.method public 㚬(I)V
    .locals 0

    return-void
.end method

.method public 㺴(Landroid/graphics/Typeface;)V
    .locals 3

    iget-object v0, p0, L㚬/䂻/ბ/㲧$உ;->உ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, L㚬/䂻/ბ/㲧;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_2

    iget v1, p0, L㚬/䂻/ბ/㲧$உ;->䂻:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    iget v2, p0, L㚬/䂻/ბ/㲧$உ;->㚬:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {p1, v1, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p1

    :cond_2
    new-instance v1, L㚬/䂻/ბ/㲧$உ$உ;

    iget-object v2, p0, L㚬/䂻/ბ/㲧$உ;->உ:Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0, v2, p1}, L㚬/䂻/ბ/㲧$உ$உ;-><init>(L㚬/䂻/ბ/㲧$உ;Ljava/lang/ref/WeakReference;Landroid/graphics/Typeface;)V

    invoke-virtual {v0, v1}, L㚬/䂻/ბ/㲧;->㲝(Ljava/lang/Runnable;)V

    return-void
.end method
