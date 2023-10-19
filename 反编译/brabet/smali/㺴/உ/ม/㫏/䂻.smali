.class public final synthetic L㺴/உ/ม/㫏/䂻;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic 㚬:Ljava/lang/String;

.field public final synthetic 㺴:Landroid/content/Context;

.field public final synthetic 䂻:J


# direct methods
.method public synthetic constructor <init>(JLjava/lang/String;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, L㺴/உ/ม/㫏/䂻;->䂻:J

    iput-object p3, p0, L㺴/உ/ม/㫏/䂻;->㚬:Ljava/lang/String;

    iput-object p4, p0, L㺴/உ/ม/㫏/䂻;->㺴:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-wide v0, p0, L㺴/உ/ม/㫏/䂻;->䂻:J

    iget-object v2, p0, L㺴/உ/ม/㫏/䂻;->㚬:Ljava/lang/String;

    iget-object v3, p0, L㺴/உ/ม/㫏/䂻;->㺴:Landroid/content/Context;

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->䂻(JLjava/lang/String;Landroid/content/Context;)V

    return-void
.end method
