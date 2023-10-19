.class public L㚬/ಫ/䂻/䂻$㚬;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/ಫ/䂻/䂻;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u36ac"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final உ:Landroid/graphics/Rect;

.field public final 㚬:Z

.field public final 㺴:L㚬/ಫ/䂻/䂻$உ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "L\u36ac/\u0cab/\u40bb/\u40bb$\u0b89<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final 䂻:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(ZL㚬/ಫ/䂻/䂻$உ;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "L\u36ac/\u0cab/\u40bb/\u40bb$\u0b89<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, L㚬/ಫ/䂻/䂻$㚬;->உ:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, L㚬/ಫ/䂻/䂻$㚬;->䂻:Landroid/graphics/Rect;

    iput-boolean p1, p0, L㚬/ಫ/䂻/䂻$㚬;->㚬:Z

    iput-object p2, p0, L㚬/ಫ/䂻/䂻$㚬;->㺴:L㚬/ಫ/䂻/䂻$உ;

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    iget-object v0, p0, L㚬/ಫ/䂻/䂻$㚬;->உ:Landroid/graphics/Rect;

    iget-object v1, p0, L㚬/ಫ/䂻/䂻$㚬;->䂻:Landroid/graphics/Rect;

    iget-object v2, p0, L㚬/ಫ/䂻/䂻$㚬;->㺴:L㚬/ಫ/䂻/䂻$உ;

    invoke-interface {v2, p1, v0}, L㚬/ಫ/䂻/䂻$உ;->உ(Ljava/lang/Object;Landroid/graphics/Rect;)V

    iget-object p1, p0, L㚬/ಫ/䂻/䂻$㚬;->㺴:L㚬/ಫ/䂻/䂻$உ;

    invoke-interface {p1, p2, v1}, L㚬/ಫ/䂻/䂻$உ;->உ(Ljava/lang/Object;Landroid/graphics/Rect;)V

    iget p1, v0, Landroid/graphics/Rect;->top:I

    iget p2, v1, Landroid/graphics/Rect;->top:I

    const/4 v2, -0x1

    if-ge p1, p2, :cond_0

    return v2

    :cond_0
    const/4 v3, 0x1

    if-le p1, p2, :cond_1

    return v3

    :cond_1
    iget p1, v0, Landroid/graphics/Rect;->left:I

    iget p2, v1, Landroid/graphics/Rect;->left:I

    if-ge p1, p2, :cond_3

    iget-boolean p1, p0, L㚬/ಫ/䂻/䂻$㚬;->㚬:Z

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2

    :cond_3
    if-le p1, p2, :cond_5

    iget-boolean p1, p0, L㚬/ಫ/䂻/䂻$㚬;->㚬:Z

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_5
    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    iget p2, v1, Landroid/graphics/Rect;->bottom:I

    if-ge p1, p2, :cond_6

    return v2

    :cond_6
    if-le p1, p2, :cond_7

    return v3

    :cond_7
    iget p1, v0, Landroid/graphics/Rect;->right:I

    iget p2, v1, Landroid/graphics/Rect;->right:I

    if-ge p1, p2, :cond_9

    iget-boolean p1, p0, L㚬/ಫ/䂻/䂻$㚬;->㚬:Z

    if-eqz p1, :cond_8

    const/4 v2, 0x1

    :cond_8
    return v2

    :cond_9
    if-le p1, p2, :cond_b

    iget-boolean p1, p0, L㚬/ಫ/䂻/䂻$㚬;->㚬:Z

    if-eqz p1, :cond_a

    goto :goto_1

    :cond_a
    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_b
    const/4 p1, 0x0

    return p1
.end method
