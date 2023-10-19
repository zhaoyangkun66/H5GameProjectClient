.class public final synthetic L㺴/உ/㫏/㞘/㺴;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic 㚬:Lcom/facebook/internal/FetchedAppSettings;

.field public final synthetic 䂻:Lcom/facebook/login/widget/LoginButton;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/login/widget/LoginButton;Lcom/facebook/internal/FetchedAppSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L㺴/உ/㫏/㞘/㺴;->䂻:Lcom/facebook/login/widget/LoginButton;

    iput-object p2, p0, L㺴/உ/㫏/㞘/㺴;->㚬:Lcom/facebook/internal/FetchedAppSettings;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, L㺴/உ/㫏/㞘/㺴;->䂻:Lcom/facebook/login/widget/LoginButton;

    iget-object v1, p0, L㺴/உ/㫏/㞘/㺴;->㚬:Lcom/facebook/internal/FetchedAppSettings;

    invoke-static {v0, v1}, Lcom/facebook/login/widget/LoginButton;->㺴(Lcom/facebook/login/widget/LoginButton;Lcom/facebook/internal/FetchedAppSettings;)V

    return-void
.end method
