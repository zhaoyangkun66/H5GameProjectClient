.class public final synthetic L㺴/உ/㫏/㞘/உ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic 㚬:Lcom/facebook/login/widget/LoginButton;

.field public final synthetic 䂻:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/facebook/login/widget/LoginButton;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L㺴/உ/㫏/㞘/உ;->䂻:Ljava/lang/String;

    iput-object p2, p0, L㺴/உ/㫏/㞘/உ;->㚬:Lcom/facebook/login/widget/LoginButton;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, L㺴/உ/㫏/㞘/உ;->䂻:Ljava/lang/String;

    iget-object v1, p0, L㺴/உ/㫏/㞘/உ;->㚬:Lcom/facebook/login/widget/LoginButton;

    invoke-static {v0, v1}, Lcom/facebook/login/widget/LoginButton;->䂻(Ljava/lang/String;Lcom/facebook/login/widget/LoginButton;)V

    return-void
.end method
