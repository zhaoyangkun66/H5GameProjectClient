.class public final Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;
.super Landroid/widget/FrameLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/login/widget/ToolTipPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PopupContentView"
.end annotation


# instance fields
.field private final bodyFrame:Landroid/view/View;

.field private final bottomArrow:Landroid/widget/ImageView;

.field public final synthetic this$0:Lcom/facebook/login/widget/ToolTipPopup;

.field private final topArrow:Landroid/widget/ImageView;

.field private final xOut:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/facebook/login/widget/ToolTipPopup;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;->this$0:Lcom/facebook/login/widget/ToolTipPopup;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/facebook/login/R$layout;->com_facebook_tooltip_bubble:I

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    sget p1, Lcom/facebook/login/R$id;->com_facebook_tooltip_bubble_view_top_pointer:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type android.widget.ImageView"

    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;->topArrow:Landroid/widget/ImageView;

    sget p1, Lcom/facebook/login/R$id;->com_facebook_tooltip_bubble_view_bottom_pointer:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;->bottomArrow:Landroid/widget/ImageView;

    sget p1, Lcom/facebook/login/R$id;->com_facebook_body_frame:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.com_facebook_body_frame)"

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->㚬(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;->bodyFrame:Landroid/view/View;

    sget p1, Lcom/facebook/login/R$id;->com_facebook_button_xout:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;->xOut:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final getBodyFrame()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;->bodyFrame:Landroid/view/View;

    return-object v0
.end method

.method public final getBottomArrow()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;->bottomArrow:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final getTopArrow()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;->topArrow:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final getXOut()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;->xOut:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final showBottomArrow()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;->topArrow:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;->bottomArrow:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public final showTopArrow()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;->topArrow:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/facebook/login/widget/ToolTipPopup$PopupContentView;->bottomArrow:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
