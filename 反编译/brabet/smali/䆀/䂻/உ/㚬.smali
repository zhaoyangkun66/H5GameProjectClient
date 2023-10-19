.class public L䆀/䂻/உ/㚬;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements L䆀/䂻/உ/㺴;


# instance fields
.field public உ:Landroid/content/Context;

.field public 䂻:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L䆀/䂻/உ/㚬;->உ:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public உ()V
    .locals 1

    iget-object v0, p0, L䆀/䂻/உ/㚬;->䂻:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, L䆀/䂻/உ/㚬;->䂻:Landroid/app/ProgressDialog;

    :cond_0
    return-void
.end method

.method public 㚬()V
    .locals 2

    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, L䆀/䂻/உ/㚬;->உ:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    const-string v1, "BQ4WDw0OAAUIDwZPT08="

    invoke-static {v1}, L䆀/உ/உ;->உ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    iput-object v0, p0, L䆀/䂻/உ/㚬;->䂻:Landroid/app/ProgressDialog;

    return-void
.end method

.method public 䂻(I)V
    .locals 1

    iget-object v0, p0, L䆀/䂻/உ/㚬;->䂻:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setProgress(I)V

    :cond_0
    return-void
.end method
