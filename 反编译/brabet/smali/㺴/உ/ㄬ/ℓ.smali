.class public final synthetic L㺴/உ/ㄬ/ℓ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic 䂻:Lcom/facebook/internal/FetchedAppSettingsManager$FetchedAppSettingsCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/internal/FetchedAppSettingsManager$FetchedAppSettingsCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L㺴/உ/ㄬ/ℓ;->䂻:Lcom/facebook/internal/FetchedAppSettingsManager$FetchedAppSettingsCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, L㺴/உ/ㄬ/ℓ;->䂻:Lcom/facebook/internal/FetchedAppSettingsManager$FetchedAppSettingsCallback;

    invoke-static {v0}, Lcom/facebook/internal/FetchedAppSettingsManager;->䂻(Lcom/facebook/internal/FetchedAppSettingsManager$FetchedAppSettingsCallback;)V

    return-void
.end method
