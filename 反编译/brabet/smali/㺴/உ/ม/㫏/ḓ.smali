.class public final synthetic L㺴/உ/ม/㫏/ḓ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic 㚬:Ljava/lang/String;

.field public final synthetic 䂻:J


# direct methods
.method public synthetic constructor <init>(JLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, L㺴/உ/ม/㫏/ḓ;->䂻:J

    iput-object p3, p0, L㺴/உ/ม/㫏/ḓ;->㚬:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-wide v0, p0, L㺴/உ/ม/㫏/ḓ;->䂻:J

    iget-object v2, p0, L㺴/உ/ม/㫏/ḓ;->㚬:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->ḓ(JLjava/lang/String;)V

    return-void
.end method
