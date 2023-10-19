.class public final Lcom/facebook/login/widget/ProfilePictureView$initialize$1;
.super Lcom/facebook/ProfileTracker;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/login/widget/ProfilePictureView;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/facebook/login/widget/ProfilePictureView;


# direct methods
.method public constructor <init>(Lcom/facebook/login/widget/ProfilePictureView;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/login/widget/ProfilePictureView$initialize$1;->this$0:Lcom/facebook/login/widget/ProfilePictureView;

    invoke-direct {p0}, Lcom/facebook/ProfileTracker;-><init>()V

    return-void
.end method


# virtual methods
.method public onCurrentProfileChanged(Lcom/facebook/Profile;Lcom/facebook/Profile;)V
    .locals 0

    iget-object p1, p0, Lcom/facebook/login/widget/ProfilePictureView$initialize$1;->this$0:Lcom/facebook/login/widget/ProfilePictureView;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/facebook/Profile;->getId()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, p2}, Lcom/facebook/login/widget/ProfilePictureView;->setProfileId(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/facebook/login/widget/ProfilePictureView$initialize$1;->this$0:Lcom/facebook/login/widget/ProfilePictureView;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/facebook/login/widget/ProfilePictureView;->access$refreshImage(Lcom/facebook/login/widget/ProfilePictureView;Z)V

    return-void
.end method
