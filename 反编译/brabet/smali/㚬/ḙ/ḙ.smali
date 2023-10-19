.class public L㚬/ḙ/ḙ;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final உ:L㚬/䆀/உ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "L\u36ac/\u4180/\u0b89<",
            "Landroid/view/View;",
            "L\u36ac/\u1e19/\u3b72;",
            ">;"
        }
    .end annotation
.end field

.field public final 㚬:L㚬/䆀/㺴;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "L\u36ac/\u4180/\u3eb4<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public final 㺴:L㚬/䆀/உ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "L\u36ac/\u4180/\u0b89<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public final 䂻:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, L㚬/䆀/உ;

    invoke-direct {v0}, L㚬/䆀/உ;-><init>()V

    iput-object v0, p0, L㚬/ḙ/ḙ;->உ:L㚬/䆀/உ;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, L㚬/ḙ/ḙ;->䂻:Landroid/util/SparseArray;

    new-instance v0, L㚬/䆀/㺴;

    invoke-direct {v0}, L㚬/䆀/㺴;-><init>()V

    iput-object v0, p0, L㚬/ḙ/ḙ;->㚬:L㚬/䆀/㺴;

    new-instance v0, L㚬/䆀/உ;

    invoke-direct {v0}, L㚬/䆀/உ;-><init>()V

    iput-object v0, p0, L㚬/ḙ/ḙ;->㺴:L㚬/䆀/உ;

    return-void
.end method
