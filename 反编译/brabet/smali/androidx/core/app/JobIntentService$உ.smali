.class public final Landroidx/core/app/JobIntentService$உ;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/JobIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "\u0b89"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic உ:Landroidx/core/app/JobIntentService;


# direct methods
.method public constructor <init>(Landroidx/core/app/JobIntentService;)V
    .locals 0

    iput-object p1, p0, Landroidx/core/app/JobIntentService$உ;->உ:Landroidx/core/app/JobIntentService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroidx/core/app/JobIntentService$உ;->உ([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroidx/core/app/JobIntentService$உ;->䂻(Ljava/lang/Void;)V

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroidx/core/app/JobIntentService$உ;->㚬(Ljava/lang/Void;)V

    return-void
.end method

.method public varargs உ([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    :goto_0
    iget-object p1, p0, Landroidx/core/app/JobIntentService$உ;->உ:Landroidx/core/app/JobIntentService;

    invoke-virtual {p1}, Landroidx/core/app/JobIntentService;->உ()Landroidx/core/app/JobIntentService$ḓ;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroidx/core/app/JobIntentService$உ;->உ:Landroidx/core/app/JobIntentService;

    invoke-interface {p1}, Landroidx/core/app/JobIntentService$ḓ;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/JobIntentService;->ḓ(Landroid/content/Intent;)V

    invoke-interface {p1}, Landroidx/core/app/JobIntentService$ḓ;->உ()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public 㚬(Ljava/lang/Void;)V
    .locals 0

    iget-object p1, p0, Landroidx/core/app/JobIntentService$உ;->உ:Landroidx/core/app/JobIntentService;

    invoke-virtual {p1}, Landroidx/core/app/JobIntentService;->ᆻ()V

    return-void
.end method

.method public 䂻(Ljava/lang/Void;)V
    .locals 0

    iget-object p1, p0, Landroidx/core/app/JobIntentService$உ;->உ:Landroidx/core/app/JobIntentService;

    invoke-virtual {p1}, Landroidx/core/app/JobIntentService;->ᆻ()V

    return-void
.end method
