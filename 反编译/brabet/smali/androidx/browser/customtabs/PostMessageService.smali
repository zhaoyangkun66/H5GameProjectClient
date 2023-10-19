.class public Landroidx/browser/customtabs/PostMessageService;
.super Landroid/app/Service;
.source ""


# instance fields
.field public 䂻:L䂻/உ/உ/㚬$உ;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroidx/browser/customtabs/PostMessageService$உ;

    invoke-direct {v0, p0}, Landroidx/browser/customtabs/PostMessageService$உ;-><init>(Landroidx/browser/customtabs/PostMessageService;)V

    iput-object v0, p0, Landroidx/browser/customtabs/PostMessageService;->䂻:L䂻/உ/உ/㚬$உ;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p1, p0, Landroidx/browser/customtabs/PostMessageService;->䂻:L䂻/உ/உ/㚬$உ;

    return-object p1
.end method
