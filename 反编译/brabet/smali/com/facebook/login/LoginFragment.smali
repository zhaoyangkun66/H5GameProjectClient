.class public Lcom/facebook/login/LoginFragment;
.super Landroidx/fragment/app/Fragment;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/login/LoginFragment$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/facebook/login/LoginFragment$Companion;

.field public static final EXTRA_REQUEST:Ljava/lang/String; = "request"

.field private static final NULL_CALLING_PKG_ERROR_MSG:Ljava/lang/String; = "Cannot call LoginFragment with a null calling package. This can occur if the launchMode of the caller is singleInstance."

.field public static final REQUEST_KEY:Ljava/lang/String; = "com.facebook.LoginFragment:Request"

.field public static final RESULT_KEY:Ljava/lang/String; = "com.facebook.LoginFragment:Result"

.field private static final SAVED_LOGIN_CLIENT:Ljava/lang/String; = "loginClient"

.field private static final TAG:Ljava/lang/String; = "LoginFragment"


# instance fields
.field private callingPackage:Ljava/lang/String;

.field private launcher:L㚬/உ/ḓ/㚬;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "L\u36ac/\u0b89/\u1e13/\u36ac<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private loginClient:Lcom/facebook/login/LoginClient;

.field private progressBar:Landroid/view/View;

.field private request:Lcom/facebook/login/LoginClient$Request;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/facebook/login/LoginFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/login/LoginFragment$Companion;-><init>(Lḓ/ᓭ/㺴/ᆻ;)V

    sput-object v0, Lcom/facebook/login/LoginFragment;->Companion:Lcom/facebook/login/LoginFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method public static final synthetic access$hideSpinner(Lcom/facebook/login/LoginFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/login/LoginFragment;->hideSpinner()V

    return-void
.end method

.method public static final synthetic access$showSpinner(Lcom/facebook/login/LoginFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/login/LoginFragment;->showSpinner()V

    return-void
.end method

.method private final getLoginMethodHandlerCallback(Landroidx/fragment/app/FragmentActivity;)Lḓ/ᓭ/㚬/㹖;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentActivity;",
            ")",
            "L\u1e13/\u14ed/\u36ac/\u3e56<",
            "L\u36ac/\u0b89/\u1e13/\u0b89;",
            "L\u1e13/\u39e6;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/facebook/login/LoginFragment$getLoginMethodHandlerCallback$1;

    invoke-direct {v0, p0, p1}, Lcom/facebook/login/LoginFragment$getLoginMethodHandlerCallback$1;-><init>(Lcom/facebook/login/LoginFragment;Landroidx/fragment/app/FragmentActivity;)V

    return-object v0
.end method

.method private final hideSpinner()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/login/LoginFragment;->progressBar:Landroid/view/View;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/facebook/login/LoginFragment;->onSpinnerHidden()V

    return-void

    :cond_0
    const-string v0, "progressBar"

    invoke-static {v0}, Lḓ/ᓭ/㺴/ಫ;->ཇ(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method private final initializeCallingPackage(Landroid/app/Activity;)V
    .locals 0

    invoke-virtual {p1}, Landroid/app/Activity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/login/LoginFragment;->callingPackage:Ljava/lang/String;

    return-void
.end method

.method private static final onCreate$lambda-0(Lcom/facebook/login/LoginFragment;Lcom/facebook/login/LoginClient$Result;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outcome"

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/facebook/login/LoginFragment;->onLoginClientCompleted(Lcom/facebook/login/LoginClient$Result;)V

    return-void
.end method

.method private static final onCreate$lambda-1(Lḓ/ᓭ/㚬/㹖;L㚬/உ/ḓ/உ;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lḓ/ᓭ/㚬/㹖;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final onLoginClientCompleted(Lcom/facebook/login/LoginClient$Result;)V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/login/LoginFragment;->request:Lcom/facebook/login/LoginClient$Request;

    iget-object v0, p1, Lcom/facebook/login/LoginClient$Result;->code:Lcom/facebook/login/LoginClient$Result$Code;

    sget-object v1, Lcom/facebook/login/LoginClient$Result$Code;->CANCEL:Lcom/facebook/login/LoginClient$Result$Code;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "com.facebook.LoginFragment:Result"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method private final showSpinner()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/login/LoginFragment;->progressBar:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/facebook/login/LoginFragment;->onSpinnerShown()V

    return-void

    :cond_0
    const-string v0, "progressBar"

    invoke-static {v0}, Lḓ/ᓭ/㺴/ಫ;->ཇ(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public static synthetic உ(Lcom/facebook/login/LoginFragment;Lcom/facebook/login/LoginClient$Result;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/facebook/login/LoginFragment;->onCreate$lambda-0(Lcom/facebook/login/LoginFragment;Lcom/facebook/login/LoginClient$Result;)V

    return-void
.end method

.method public static synthetic 䂻(Lḓ/ᓭ/㚬/㹖;L㚬/உ/ḓ/உ;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/facebook/login/LoginFragment;->onCreate$lambda-1(Lḓ/ᓭ/㚬/㹖;L㚬/உ/ḓ/உ;)V

    return-void
.end method


# virtual methods
.method public createLoginClient()Lcom/facebook/login/LoginClient;
    .locals 1

    new-instance v0, Lcom/facebook/login/LoginClient;

    invoke-direct {v0, p0}, Lcom/facebook/login/LoginClient;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method

.method public final getLauncher()L㚬/உ/ḓ/㚬;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "L\u36ac/\u0b89/\u1e13/\u36ac<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/login/LoginFragment;->launcher:L㚬/உ/ḓ/㚬;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "launcher"

    invoke-static {v0}, Lḓ/ᓭ/㺴/ಫ;->ཇ(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public getLayoutResId()I
    .locals 1

    sget v0, Lcom/facebook/common/R$layout;->com_facebook_login_fragment:I

    return v0
.end method

.method public final getLoginClient()Lcom/facebook/login/LoginClient;
    .locals 1

    iget-object v0, p0, Lcom/facebook/login/LoginFragment;->loginClient:Lcom/facebook/login/LoginClient;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "loginClient"

    invoke-static {v0}, Lḓ/ᓭ/㺴/ಫ;->ཇ(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/facebook/login/LoginFragment;->getLoginClient()Lcom/facebook/login/LoginClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/login/LoginClient;->onActivityResult(IILandroid/content/Intent;)Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "loginClient"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/facebook/login/LoginClient;

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Lcom/facebook/login/LoginClient;->setFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/facebook/login/LoginFragment;->createLoginClient()Lcom/facebook/login/LoginClient;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lcom/facebook/login/LoginFragment;->loginClient:Lcom/facebook/login/LoginClient;

    invoke-virtual {p0}, Lcom/facebook/login/LoginFragment;->getLoginClient()Lcom/facebook/login/LoginClient;

    move-result-object p1

    new-instance v0, L㺴/உ/㫏/ಫ;

    invoke-direct {v0, p0}, L㺴/உ/㫏/ಫ;-><init>(Lcom/facebook/login/LoginFragment;)V

    invoke-virtual {p1, v0}, Lcom/facebook/login/LoginClient;->setOnCompletedListener(Lcom/facebook/login/LoginClient$OnCompletedListener;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    invoke-direct {p0, p1}, Lcom/facebook/login/LoginFragment;->initializeCallingPackage(Landroid/app/Activity;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "com.facebook.LoginFragment:Request"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "request"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/login/LoginClient$Request;

    iput-object v0, p0, Lcom/facebook/login/LoginFragment;->request:Lcom/facebook/login/LoginClient$Request;

    :cond_3
    new-instance v0, L㚬/உ/ḓ/䆀/㚬;

    invoke-direct {v0}, L㚬/உ/ḓ/䆀/㚬;-><init>()V

    invoke-direct {p0, p1}, Lcom/facebook/login/LoginFragment;->getLoginMethodHandlerCallback(Landroidx/fragment/app/FragmentActivity;)Lḓ/ᓭ/㚬/㹖;

    move-result-object p1

    new-instance v1, L㺴/உ/㫏/㧦;

    invoke-direct {v1, p1}, L㺴/உ/㫏/㧦;-><init>(Lḓ/ᓭ/㚬/㹖;)V

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(L㚬/உ/ḓ/䆀/உ;L㚬/உ/ḓ/䂻;)L㚬/உ/ḓ/㚬;

    move-result-object p1

    const-string v0, "registerForActivityResult(\n            ActivityResultContracts.StartActivityForResult(),\n            getLoginMethodHandlerCallback(activity))"

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->㚬(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/facebook/login/LoginFragment;->launcher:L㚬/உ/ḓ/㚬;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/facebook/login/LoginFragment;->getLayoutResId()I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    sget p2, Lcom/facebook/common/R$id;->com_facebook_login_fragment_progress_bar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string p3, "view.findViewById<View>(R.id.com_facebook_login_fragment_progress_bar)"

    invoke-static {p2, p3}, Lḓ/ᓭ/㺴/ಫ;->㚬(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/facebook/login/LoginFragment;->progressBar:Landroid/view/View;

    invoke-virtual {p0}, Lcom/facebook/login/LoginFragment;->getLoginClient()Lcom/facebook/login/LoginClient;

    move-result-object p2

    new-instance p3, Lcom/facebook/login/LoginFragment$onCreateView$1;

    invoke-direct {p3, p0}, Lcom/facebook/login/LoginFragment$onCreateView$1;-><init>(Lcom/facebook/login/LoginFragment;)V

    invoke-virtual {p2, p3}, Lcom/facebook/login/LoginClient;->setBackgroundProcessingListener(Lcom/facebook/login/LoginClient$BackgroundProcessingListener;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/login/LoginFragment;->getLoginClient()Lcom/facebook/login/LoginClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/login/LoginClient;->cancelCurrentHandler()V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sget v1, Lcom/facebook/common/R$id;->com_facebook_login_fragment_progress_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/facebook/login/LoginFragment;->callingPackage:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "LoginFragment"

    const-string v1, "Cannot call LoginFragment with a null calling package. This can occur if the launchMode of the caller is singleInstance."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/facebook/login/LoginFragment;->getLoginClient()Lcom/facebook/login/LoginClient;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/login/LoginFragment;->request:Lcom/facebook/login/LoginClient$Request;

    invoke-virtual {v0, v1}, Lcom/facebook/login/LoginClient;->startOrContinueAuth(Lcom/facebook/login/LoginClient$Request;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/facebook/login/LoginFragment;->getLoginClient()Lcom/facebook/login/LoginClient;

    move-result-object v0

    const-string v1, "loginClient"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSpinnerHidden()V
    .locals 0

    return-void
.end method

.method public onSpinnerShown()V
    .locals 0

    return-void
.end method
