.class public final Lcom/facebook/CustomTabMainActivity;
.super Landroid/app/Activity;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/CustomTabMainActivity$Companion;,
        Lcom/facebook/CustomTabMainActivity$WhenMappings;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/facebook/CustomTabMainActivity$Companion;

.field public static final EXTRA_ACTION:Ljava/lang/String;

.field public static final EXTRA_CHROME_PACKAGE:Ljava/lang/String;

.field public static final EXTRA_PARAMS:Ljava/lang/String;

.field public static final EXTRA_TARGET_APP:Ljava/lang/String;

.field public static final EXTRA_URL:Ljava/lang/String;

.field public static final NO_ACTIVITY_EXCEPTION:Ljava/lang/String;

.field public static final REFRESH_ACTION:Ljava/lang/String;


# instance fields
.field private redirectReceiver:Landroid/content/BroadcastReceiver;

.field private shouldCloseCustomTab:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/facebook/CustomTabMainActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/CustomTabMainActivity$Companion;-><init>(Lḓ/ᓭ/㺴/ᆻ;)V

    sput-object v0, Lcom/facebook/CustomTabMainActivity;->Companion:Lcom/facebook/CustomTabMainActivity$Companion;

    const-class v0, Lcom/facebook/CustomTabMainActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".extra_action"

    invoke-static {v0, v1}, Lḓ/ᓭ/㺴/ಫ;->ಫ(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/CustomTabMainActivity;->EXTRA_ACTION:Ljava/lang/String;

    const-class v0, Lcom/facebook/CustomTabMainActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".extra_params"

    invoke-static {v0, v1}, Lḓ/ᓭ/㺴/ಫ;->ಫ(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/CustomTabMainActivity;->EXTRA_PARAMS:Ljava/lang/String;

    const-class v0, Lcom/facebook/CustomTabMainActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".extra_chromePackage"

    invoke-static {v0, v1}, Lḓ/ᓭ/㺴/ಫ;->ಫ(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/CustomTabMainActivity;->EXTRA_CHROME_PACKAGE:Ljava/lang/String;

    const-class v0, Lcom/facebook/CustomTabMainActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".extra_url"

    invoke-static {v0, v1}, Lḓ/ᓭ/㺴/ಫ;->ಫ(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/CustomTabMainActivity;->EXTRA_URL:Ljava/lang/String;

    const-class v0, Lcom/facebook/CustomTabMainActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".extra_targetApp"

    invoke-static {v0, v1}, Lḓ/ᓭ/㺴/ಫ;->ಫ(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/CustomTabMainActivity;->EXTRA_TARGET_APP:Ljava/lang/String;

    const-class v0, Lcom/facebook/CustomTabMainActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".action_refresh"

    invoke-static {v0, v1}, Lḓ/ᓭ/㺴/ಫ;->ಫ(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/CustomTabMainActivity;->REFRESH_ACTION:Ljava/lang/String;

    const-class v0, Lcom/facebook/CustomTabMainActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".no_activity_exception"

    invoke-static {v0, v1}, Lḓ/ᓭ/㺴/ಫ;->ಫ(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/CustomTabMainActivity;->NO_ACTIVITY_EXCEPTION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/CustomTabMainActivity;->shouldCloseCustomTab:Z

    return-void
.end method

.method private final sendResult(ILandroid/content/Intent;)V
    .locals 4

    iget-object v0, p0, Lcom/facebook/CustomTabMainActivity;->redirectReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, L㚬/ᓭ/உ/உ;->䂻(Landroid/content/Context;)L㚬/ᓭ/உ/உ;

    move-result-object v1

    invoke-virtual {v1, v0}, L㚬/ᓭ/உ/உ;->ḓ(Landroid/content/BroadcastReceiver;)V

    :goto_0
    const-string v0, "intent"

    const/4 v1, 0x0

    if-eqz p2, :cond_3

    sget-object v2, Lcom/facebook/CustomTabMainActivity;->EXTRA_URL:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    sget-object v3, Lcom/facebook/CustomTabMainActivity;->Companion:Lcom/facebook/CustomTabMainActivity$Companion;

    invoke-static {v3, v2}, Lcom/facebook/CustomTabMainActivity$Companion;->access$parseResponseUri(Lcom/facebook/CustomTabMainActivity$Companion;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    goto :goto_1

    :cond_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    :goto_1
    sget-object v3, Lcom/facebook/internal/NativeProtocol;->INSTANCE:Lcom/facebook/internal/NativeProtocol;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-static {v3, v0}, Lḓ/ᓭ/㺴/ಫ;->㚬(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v2, v1}, Lcom/facebook/internal/NativeProtocol;->createProtocolResultIntent(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/FacebookException;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    move-object p2, v0

    goto :goto_2

    :cond_3
    sget-object p2, Lcom/facebook/internal/NativeProtocol;->INSTANCE:Lcom/facebook/internal/NativeProtocol;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-static {p2, v0}, Lḓ/ᓭ/㺴/ಫ;->㚬(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v1, v1}, Lcom/facebook/internal/NativeProtocol;->createProtocolResultIntent(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/FacebookException;)Landroid/content/Intent;

    move-result-object p2

    :goto_2
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget-object v0, Lcom/facebook/CustomTabActivity;->CUSTOM_TAB_REDIRECT_ACTION:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lḓ/ᓭ/㺴/ಫ;->உ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setResult(I)V

    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    if-nez p1, :cond_4

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    sget-object v1, Lcom/facebook/CustomTabMainActivity;->EXTRA_ACTION:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    sget-object v3, Lcom/facebook/CustomTabMainActivity;->EXTRA_PARAMS:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    sget-object v4, Lcom/facebook/CustomTabMainActivity;->EXTRA_CHROME_PACKAGE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/facebook/login/LoginTargetApp;->Companion:Lcom/facebook/login/LoginTargetApp$Companion;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    sget-object v6, Lcom/facebook/CustomTabMainActivity;->EXTRA_TARGET_APP:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/facebook/login/LoginTargetApp$Companion;->fromString(Ljava/lang/String;)Lcom/facebook/login/LoginTargetApp;

    move-result-object v4

    sget-object v5, Lcom/facebook/CustomTabMainActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v4, v5, v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    new-instance v4, Lcom/facebook/internal/InstagramCustomTab;

    invoke-direct {v4, p1, v1}, Lcom/facebook/internal/InstagramCustomTab;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_2
    new-instance v4, Lcom/facebook/internal/CustomTab;

    invoke-direct {v4, p1, v1}, Lcom/facebook/internal/CustomTab;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_1
    invoke-virtual {v4, p0, v3}, Lcom/facebook/internal/CustomTab;->openCustomTab(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p1

    iput-boolean v2, p0, Lcom/facebook/CustomTabMainActivity;->shouldCloseCustomTab:Z

    if-nez p1, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Lcom/facebook/CustomTabMainActivity;->NO_ACTIVITY_EXCEPTION:Ljava/lang/String;

    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    :cond_3
    new-instance p1, Lcom/facebook/CustomTabMainActivity$onCreate$redirectReceiver$1;

    invoke-direct {p1, p0}, Lcom/facebook/CustomTabMainActivity$onCreate$redirectReceiver$1;-><init>(Lcom/facebook/CustomTabMainActivity;)V

    iput-object p1, p0, Lcom/facebook/CustomTabMainActivity;->redirectReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {p0}, L㚬/ᓭ/உ/உ;->䂻(Landroid/content/Context;)L㚬/ᓭ/உ/உ;

    move-result-object v1

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, v2}, L㚬/ᓭ/உ/உ;->㚬(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    :cond_4
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "intent"

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    sget-object v0, Lcom/facebook/CustomTabMainActivity;->REFRESH_ACTION:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lḓ/ᓭ/㺴/ಫ;->உ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    sget-object v2, Lcom/facebook/CustomTabActivity;->DESTROY_ACTION:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, L㚬/ᓭ/உ/உ;->䂻(Landroid/content/Context;)L㚬/ᓭ/உ/உ;

    move-result-object v2

    invoke-virtual {v2, v0}, L㚬/ᓭ/உ/உ;->㺴(Landroid/content/Intent;)Z

    :goto_0
    invoke-direct {p0, v1, p1}, Lcom/facebook/CustomTabMainActivity;->sendResult(ILandroid/content/Intent;)V

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/facebook/CustomTabActivity;->CUSTOM_TAB_REDIRECT_ACTION:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lḓ/ᓭ/㺴/ಫ;->உ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-boolean v0, p0, Lcom/facebook/CustomTabMainActivity;->shouldCloseCustomTab:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/facebook/CustomTabMainActivity;->sendResult(ILandroid/content/Intent;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/CustomTabMainActivity;->shouldCloseCustomTab:Z

    return-void
.end method
