.class public Landroidx/activity/result/ActivityResultRegistry$㺴;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/activity/result/ActivityResultRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u3eb4"
.end annotation


# instance fields
.field public final உ:L㚬/ἥ/ḓ;

.field public final 䂻:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "L\u36ac/\u1f25/\u4180;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(L㚬/ἥ/ḓ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/activity/result/ActivityResultRegistry$㺴;->உ:L㚬/ἥ/ḓ;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/activity/result/ActivityResultRegistry$㺴;->䂻:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public உ(L㚬/ἥ/䆀;)V
    .locals 1

    iget-object v0, p0, Landroidx/activity/result/ActivityResultRegistry$㺴;->உ:L㚬/ἥ/ḓ;

    invoke-virtual {v0, p1}, L㚬/ἥ/ḓ;->உ(L㚬/ἥ/ᆻ;)V

    iget-object v0, p0, Landroidx/activity/result/ActivityResultRegistry$㺴;->䂻:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public 䂻()V
    .locals 3

    iget-object v0, p0, Landroidx/activity/result/ActivityResultRegistry$㺴;->䂻:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, L㚬/ἥ/䆀;

    iget-object v2, p0, Landroidx/activity/result/ActivityResultRegistry$㺴;->உ:L㚬/ἥ/ḓ;

    invoke-virtual {v2, v1}, L㚬/ἥ/ḓ;->㚬(L㚬/ἥ/ᆻ;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/activity/result/ActivityResultRegistry$㺴;->䂻:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
