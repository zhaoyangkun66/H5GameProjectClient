.class public final synthetic L㺴/உ/ม/㲧/㚬;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/appevents/codeless/ViewIndexingTrigger$OnShakeListener;


# instance fields
.field public final synthetic உ:Lcom/facebook/internal/FetchedAppSettings;

.field public final synthetic 䂻:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/internal/FetchedAppSettings;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L㺴/உ/ม/㲧/㚬;->உ:Lcom/facebook/internal/FetchedAppSettings;

    iput-object p2, p0, L㺴/உ/ม/㲧/㚬;->䂻:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onShake()V
    .locals 2

    iget-object v0, p0, L㺴/உ/ม/㲧/㚬;->உ:Lcom/facebook/internal/FetchedAppSettings;

    iget-object v1, p0, L㺴/உ/ม/㲧/㚬;->䂻:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/facebook/appevents/codeless/CodelessManager;->䂻(Lcom/facebook/internal/FetchedAppSettings;Ljava/lang/String;)V

    return-void
.end method
