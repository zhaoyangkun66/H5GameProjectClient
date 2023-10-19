.class public Landroidx/activity/ComponentActivity$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements L㚬/ἥ/䆀;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/activity/ComponentActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic உ:Landroidx/activity/ComponentActivity;


# direct methods
.method public constructor <init>(Landroidx/activity/ComponentActivity;)V
    .locals 0

    iput-object p1, p0, Landroidx/activity/ComponentActivity$4;->உ:Landroidx/activity/ComponentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public 㺴(L㚬/ἥ/ℓ;L㚬/ἥ/ḓ$䂻;)V
    .locals 0

    sget-object p1, L㚬/ἥ/ḓ$䂻;->ON_DESTROY:L㚬/ἥ/ḓ$䂻;

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Landroidx/activity/ComponentActivity$4;->உ:Landroidx/activity/ComponentActivity;

    iget-object p1, p1, Landroidx/activity/ComponentActivity;->mContextAwareHelper:L㚬/உ/㺴/உ;

    invoke-virtual {p1}, L㚬/உ/㺴/உ;->䂻()V

    iget-object p1, p0, Landroidx/activity/ComponentActivity$4;->உ:Landroidx/activity/ComponentActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/activity/ComponentActivity$4;->உ:Landroidx/activity/ComponentActivity;

    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->getViewModelStore()L㚬/ἥ/ḙ;

    move-result-object p1

    invoke-virtual {p1}, L㚬/ἥ/ḙ;->உ()V

    :cond_0
    return-void
.end method
