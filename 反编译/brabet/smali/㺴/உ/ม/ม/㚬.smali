.class public final synthetic L㺴/உ/ม/ม/㚬;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic 㚬:Ljava/util/List;

.field public final synthetic 䂻:Ljava/lang/Integer;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Integer;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L㺴/உ/ม/ม/㚬;->䂻:Ljava/lang/Integer;

    iput-object p2, p0, L㺴/உ/ม/ม/㚬;->㚬:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, L㺴/உ/ม/ม/㚬;->䂻:Ljava/lang/Integer;

    iget-object v1, p0, L㺴/உ/ม/ม/㚬;->㚬:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformerWebRequests$transformGraphRequestAndSendToCAPIGEndPoint$1$1;->䂻(Ljava/lang/Integer;Ljava/util/List;)V

    return-void
.end method
