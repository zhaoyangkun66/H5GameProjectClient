.class public L㚬/䂻/ბ/㢏$ḓ$㚬;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = L㚬/䂻/ბ/㢏$ḓ;->䆀(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic 㚬:L㚬/䂻/ბ/㢏$ḓ;

.field public final synthetic 䂻:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# direct methods
.method public constructor <init>(L㚬/䂻/ბ/㢏$ḓ;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 0

    iput-object p1, p0, L㚬/䂻/ბ/㢏$ḓ$㚬;->㚬:L㚬/䂻/ბ/㢏$ḓ;

    iput-object p2, p0, L㚬/䂻/ბ/㢏$ḓ$㚬;->䂻:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    iget-object v0, p0, L㚬/䂻/ბ/㢏$ḓ$㚬;->㚬:L㚬/䂻/ბ/㢏$ḓ;

    iget-object v0, v0, L㚬/䂻/ბ/㢏$ḓ;->Ԁ:L㚬/䂻/ბ/㢏;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, L㚬/䂻/ბ/㢏$ḓ$㚬;->䂻:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method
