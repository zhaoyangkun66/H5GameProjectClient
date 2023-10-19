.class public final Lcom/facebook/internal/BoltsMeasurementEventListener;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/BoltsMeasurementEventListener$Companion;
    }
.end annotation


# static fields
.field private static final BOLTS_MEASUREMENT_EVENT_PREFIX:Ljava/lang/String; = "bf_"

.field public static final Companion:Lcom/facebook/internal/BoltsMeasurementEventListener$Companion;

.field private static final MEASUREMENT_EVENT_ARGS_KEY:Ljava/lang/String; = "event_args"

.field private static final MEASUREMENT_EVENT_NAME_KEY:Ljava/lang/String; = "event_name"

.field private static final MEASUREMENT_EVENT_NOTIFICATION_NAME:Ljava/lang/String;

.field private static singleton:Lcom/facebook/internal/BoltsMeasurementEventListener;


# instance fields
.field private final applicationContext:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/facebook/internal/BoltsMeasurementEventListener$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/internal/BoltsMeasurementEventListener$Companion;-><init>(Lḓ/ᓭ/㺴/ᆻ;)V

    sput-object v0, Lcom/facebook/internal/BoltsMeasurementEventListener;->Companion:Lcom/facebook/internal/BoltsMeasurementEventListener$Companion;

    const-string v0, "com.parse.bolts.measurement_event"

    sput-object v0, Lcom/facebook/internal/BoltsMeasurementEventListener;->MEASUREMENT_EVENT_NOTIFICATION_NAME:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "context.applicationContext"

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->㚬(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/facebook/internal/BoltsMeasurementEventListener;->applicationContext:Landroid/content/Context;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lḓ/ᓭ/㺴/ᆻ;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/internal/BoltsMeasurementEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic access$getMEASUREMENT_EVENT_NOTIFICATION_NAME$cp()Ljava/lang/String;
    .locals 3

    const-class v0, Lcom/facebook/internal/BoltsMeasurementEventListener;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    sget-object v0, Lcom/facebook/internal/BoltsMeasurementEventListener;->MEASUREMENT_EVENT_NOTIFICATION_NAME:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const-class v2, Lcom/facebook/internal/BoltsMeasurementEventListener;

    invoke-static {v0, v2}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method public static final synthetic access$getSingleton$cp()Lcom/facebook/internal/BoltsMeasurementEventListener;
    .locals 3

    const-class v0, Lcom/facebook/internal/BoltsMeasurementEventListener;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    sget-object v0, Lcom/facebook/internal/BoltsMeasurementEventListener;->singleton:Lcom/facebook/internal/BoltsMeasurementEventListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const-class v2, Lcom/facebook/internal/BoltsMeasurementEventListener;

    invoke-static {v0, v2}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method public static final synthetic access$open(Lcom/facebook/internal/BoltsMeasurementEventListener;)V
    .locals 1

    const-class v0, Lcom/facebook/internal/BoltsMeasurementEventListener;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/internal/BoltsMeasurementEventListener;->open()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-class v0, Lcom/facebook/internal/BoltsMeasurementEventListener;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$setSingleton$cp(Lcom/facebook/internal/BoltsMeasurementEventListener;)V
    .locals 1

    const-class v0, Lcom/facebook/internal/BoltsMeasurementEventListener;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    sput-object p0, Lcom/facebook/internal/BoltsMeasurementEventListener;->singleton:Lcom/facebook/internal/BoltsMeasurementEventListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-class v0, Lcom/facebook/internal/BoltsMeasurementEventListener;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method private final close()V
    .locals 2

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/internal/BoltsMeasurementEventListener;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, L㚬/ᓭ/உ/உ;->䂻(Landroid/content/Context;)L㚬/ᓭ/உ/உ;

    move-result-object v0

    const-string v1, "getInstance(applicationContext)"

    invoke-static {v0, v1}, Lḓ/ᓭ/㺴/ಫ;->㚬(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, L㚬/ᓭ/உ/உ;->ḓ(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v0, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public static final getInstance(Landroid/content/Context;)Lcom/facebook/internal/BoltsMeasurementEventListener;
    .locals 2

    const-class v0, Lcom/facebook/internal/BoltsMeasurementEventListener;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    sget-object v0, Lcom/facebook/internal/BoltsMeasurementEventListener;->Companion:Lcom/facebook/internal/BoltsMeasurementEventListener$Companion;

    invoke-virtual {v0, p0}, Lcom/facebook/internal/BoltsMeasurementEventListener$Companion;->getInstance(Landroid/content/Context;)Lcom/facebook/internal/BoltsMeasurementEventListener;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const-class v0, Lcom/facebook/internal/BoltsMeasurementEventListener;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method private final open()V
    .locals 3

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/internal/BoltsMeasurementEventListener;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, L㚬/ᓭ/உ/உ;->䂻(Landroid/content/Context;)L㚬/ᓭ/உ/உ;

    move-result-object v0

    const-string v1, "getInstance(applicationContext)"

    invoke-static {v0, v1}, Lḓ/ᓭ/㺴/ಫ;->㚬(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroid/content/IntentFilter;

    sget-object v2, Lcom/facebook/internal/BoltsMeasurementEventListener;->MEASUREMENT_EVENT_NOTIFICATION_NAME:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, L㚬/ᓭ/உ/உ;->㚬(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v0, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final finalize()V
    .locals 1

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/internal/BoltsMeasurementEventListener;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v0, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const-string v0, ""

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v1, Lcom/facebook/appevents/InternalAppEventsLogger;

    invoke-direct {v1, p1}, Lcom/facebook/appevents/InternalAppEventsLogger;-><init>(Landroid/content/Context;)V

    const-string p1, "bf_"

    const/4 v2, 0x0

    if-nez p2, :cond_1

    move-object v3, v2

    goto :goto_0

    :cond_1
    const-string v3, "event_name"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-static {p1, v3}, Lḓ/ᓭ/㺴/ಫ;->ಫ(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-nez p2, :cond_2

    move-object p2, v2

    goto :goto_1

    :cond_2
    const-string v3, "event_args"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    :goto_1
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    if-nez p2, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    :goto_2
    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "key"

    invoke-static {v4, v5}, Lḓ/ᓭ/㺴/ಫ;->㚬(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "[^0-9a-zA-Z _-]"

    new-instance v6, Lḓ/ḙ/ḓ;

    invoke-direct {v6, v5}, Lḓ/ḙ/ḓ;-><init>(Ljava/lang/String;)V

    const-string v5, "-"

    invoke-virtual {v6, v4, v5}, Lḓ/ḙ/ḓ;->䂻(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "^[ -]*"

    new-instance v7, Lḓ/ḙ/ḓ;

    invoke-direct {v7, v6}, Lḓ/ḙ/ḓ;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5, v0}, Lḓ/ḙ/ḓ;->䂻(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "[ -]*$"

    new-instance v7, Lḓ/ḙ/ḓ;

    invoke-direct {v7, v6}, Lḓ/ḙ/ḓ;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5, v0}, Lḓ/ḙ/ḓ;->䂻(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v1, p1, v3}, Lcom/facebook/appevents/InternalAppEventsLogger;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
