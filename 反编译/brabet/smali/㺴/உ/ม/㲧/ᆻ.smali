.class public final synthetic L㺴/உ/ม/㲧/ᆻ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic 㚬:Ljava/util/TimerTask;

.field public final synthetic 䂻:Lcom/facebook/appevents/codeless/ViewIndexer;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/appevents/codeless/ViewIndexer;Ljava/util/TimerTask;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L㺴/உ/ม/㲧/ᆻ;->䂻:Lcom/facebook/appevents/codeless/ViewIndexer;

    iput-object p2, p0, L㺴/உ/ม/㲧/ᆻ;->㚬:Ljava/util/TimerTask;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, L㺴/உ/ม/㲧/ᆻ;->䂻:Lcom/facebook/appevents/codeless/ViewIndexer;

    iget-object v1, p0, L㺴/உ/ม/㲧/ᆻ;->㚬:Ljava/util/TimerTask;

    invoke-static {v0, v1}, Lcom/facebook/appevents/codeless/ViewIndexer;->䂻(Lcom/facebook/appevents/codeless/ViewIndexer;Ljava/util/TimerTask;)V

    return-void
.end method
