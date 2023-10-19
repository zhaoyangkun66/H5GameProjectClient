.class public L㚬/䂻/ბ/㢏$ḓ$䂻;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = L㚬/䂻/ბ/㢏$ḓ;->䆀(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic 䂻:L㚬/䂻/ბ/㢏$ḓ;


# direct methods
.method public constructor <init>(L㚬/䂻/ბ/㢏$ḓ;)V
    .locals 0

    iput-object p1, p0, L㚬/䂻/ბ/㢏$ḓ$䂻;->䂻:L㚬/䂻/ბ/㢏$ḓ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    iget-object v0, p0, L㚬/䂻/ბ/㢏$ḓ$䂻;->䂻:L㚬/䂻/ბ/㢏$ḓ;

    iget-object v1, v0, L㚬/䂻/ბ/㢏$ḓ;->Ԁ:L㚬/䂻/ბ/㢏;

    invoke-virtual {v0, v1}, L㚬/䂻/ბ/㢏$ḓ;->㮕(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, L㚬/䂻/ბ/㢏$ḓ$䂻;->䂻:L㚬/䂻/ბ/㢏$ḓ;

    invoke-virtual {v0}, L㚬/䂻/ბ/㥁;->dismiss()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, L㚬/䂻/ბ/㢏$ḓ$䂻;->䂻:L㚬/䂻/ბ/㢏$ḓ;

    invoke-virtual {v0}, L㚬/䂻/ბ/㢏$ḓ;->ỷ()V

    iget-object v0, p0, L㚬/䂻/ბ/㢏$ḓ$䂻;->䂻:L㚬/䂻/ბ/㢏$ḓ;

    invoke-static {v0}, L㚬/䂻/ბ/㢏$ḓ;->Ԁ(L㚬/䂻/ბ/㢏$ḓ;)V

    :goto_0
    return-void
.end method
