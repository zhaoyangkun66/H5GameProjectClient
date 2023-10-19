.class public final synthetic L㺴/உ/㢏;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic 䂻:J


# direct methods
.method public synthetic constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, L㺴/உ/㢏;->䂻:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-wide v0, p0, L㺴/உ/㢏;->䂻:J

    invoke-static {v0, v1}, Lcom/facebook/UserSettingsManager;->உ(J)V

    return-void
.end method
