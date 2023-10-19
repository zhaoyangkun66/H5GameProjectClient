.class public final synthetic L㺴/உ/㫏/㞘/㚬;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic 䂻:Lcom/facebook/login/LoginManager;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/login/LoginManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L㺴/உ/㫏/㞘/㚬;->䂻:Lcom/facebook/login/LoginManager;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, L㺴/உ/㫏/㞘/㚬;->䂻:Lcom/facebook/login/LoginManager;

    invoke-static {v0, p1, p2}, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->உ(Lcom/facebook/login/LoginManager;Landroid/content/DialogInterface;I)V

    return-void
.end method
