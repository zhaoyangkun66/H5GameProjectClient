.class public Landroidx/fragment/app/Fragment$ᆻ;
.super Landroidx/fragment/app/Fragment$㧦;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/Fragment;->prepareCallInternal(L㚬/உ/ḓ/䆀/உ;L㚬/㚬/உ/㚬/உ;L㚬/உ/ḓ/䂻;)L㚬/உ/ḓ/㚬;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic உ:L㚬/㚬/உ/㚬/உ;

.field public final synthetic ḓ:Landroidx/fragment/app/Fragment;

.field public final synthetic 㚬:L㚬/உ/ḓ/䆀/உ;

.field public final synthetic 㺴:L㚬/உ/ḓ/䂻;

.field public final synthetic 䂻:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;L㚬/㚬/உ/㚬/உ;Ljava/util/concurrent/atomic/AtomicReference;L㚬/உ/ḓ/䆀/உ;L㚬/உ/ḓ/䂻;)V
    .locals 0

    iput-object p1, p0, Landroidx/fragment/app/Fragment$ᆻ;->ḓ:Landroidx/fragment/app/Fragment;

    iput-object p2, p0, Landroidx/fragment/app/Fragment$ᆻ;->உ:L㚬/㚬/உ/㚬/உ;

    iput-object p3, p0, Landroidx/fragment/app/Fragment$ᆻ;->䂻:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p4, p0, Landroidx/fragment/app/Fragment$ᆻ;->㚬:L㚬/உ/ḓ/䆀/உ;

    iput-object p5, p0, Landroidx/fragment/app/Fragment$ᆻ;->㺴:L㚬/உ/ḓ/䂻;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroidx/fragment/app/Fragment$㧦;-><init>(Landroidx/fragment/app/Fragment$உ;)V

    return-void
.end method


# virtual methods
.method public உ()V
    .locals 6

    iget-object v0, p0, Landroidx/fragment/app/Fragment$ᆻ;->ḓ:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->generateActivityResultKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/Fragment$ᆻ;->உ:L㚬/㚬/உ/㚬/உ;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, L㚬/㚬/உ/㚬/உ;->உ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/activity/result/ActivityResultRegistry;

    iget-object v2, p0, Landroidx/fragment/app/Fragment$ᆻ;->䂻:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v3, p0, Landroidx/fragment/app/Fragment$ᆻ;->ḓ:Landroidx/fragment/app/Fragment;

    iget-object v4, p0, Landroidx/fragment/app/Fragment$ᆻ;->㚬:L㚬/உ/ḓ/䆀/உ;

    iget-object v5, p0, Landroidx/fragment/app/Fragment$ᆻ;->㺴:L㚬/உ/ḓ/䂻;

    invoke-virtual {v1, v0, v3, v4, v5}, Landroidx/activity/result/ActivityResultRegistry;->ಫ(Ljava/lang/String;L㚬/ἥ/ℓ;L㚬/உ/ḓ/䆀/உ;L㚬/உ/ḓ/䂻;)L㚬/உ/ḓ/㚬;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method
