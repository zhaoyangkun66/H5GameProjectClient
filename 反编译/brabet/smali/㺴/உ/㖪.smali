.class public final synthetic L㺴/உ/㖪;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic 㚬:J

.field public final synthetic 㺴:J

.field public final synthetic 䂻:Lcom/facebook/GraphRequest$Callback;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/GraphRequest$Callback;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L㺴/உ/㖪;->䂻:Lcom/facebook/GraphRequest$Callback;

    iput-wide p2, p0, L㺴/உ/㖪;->㚬:J

    iput-wide p4, p0, L㺴/உ/㖪;->㺴:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, L㺴/உ/㖪;->䂻:Lcom/facebook/GraphRequest$Callback;

    iget-wide v1, p0, L㺴/உ/㖪;->㚬:J

    iget-wide v3, p0, L㺴/உ/㖪;->㺴:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/facebook/RequestProgress;->உ(Lcom/facebook/GraphRequest$Callback;JJ)V

    return-void
.end method
