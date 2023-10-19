.class public final Lcom/facebook/internal/instrument/threadcheck/ThreadCheckHandler;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/facebook/internal/instrument/threadcheck/ThreadCheckHandler;

.field private static final TAG:Ljava/lang/String;

.field private static enabled:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/internal/instrument/threadcheck/ThreadCheckHandler;

    invoke-direct {v0}, Lcom/facebook/internal/instrument/threadcheck/ThreadCheckHandler;-><init>()V

    sput-object v0, Lcom/facebook/internal/instrument/threadcheck/ThreadCheckHandler;->INSTANCE:Lcom/facebook/internal/instrument/threadcheck/ThreadCheckHandler;

    const-class v0, Lcom/facebook/internal/instrument/threadcheck/ThreadCheckHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/instrument/threadcheck/ThreadCheckHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final enable()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/internal/instrument/threadcheck/ThreadCheckHandler;->enabled:Z

    return-void
.end method

.method private final log(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    sget-boolean v0, Lcom/facebook/internal/instrument/threadcheck/ThreadCheckHandler;->enabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lḓ/ᓭ/㺴/㭲;->உ:Lḓ/ᓭ/㺴/㭲;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x6

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x2

    aput-object p3, v2, p1

    const/4 p1, 0x3

    aput-object p4, v2, p1

    const/4 p1, 0x4

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x5

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    aput-object p2, v2, p1

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%s annotation violation detected in %s.%s%s. Current looper is %s and main looper is %s."

    invoke-static {v0, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "java.lang.String.format(locale, format, *args)"

    invoke-static {p1, p2}, Lḓ/ᓭ/㺴/ಫ;->㚬(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/Exception;

    invoke-direct {p2}, Ljava/lang/Exception;-><init>()V

    sget-object p3, Lcom/facebook/internal/instrument/threadcheck/ThreadCheckHandler;->TAG:Ljava/lang/String;

    invoke-static {p3, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object p1, Lcom/facebook/internal/instrument/InstrumentData$Builder;->INSTANCE:Lcom/facebook/internal/instrument/InstrumentData$Builder;

    sget-object p1, Lcom/facebook/internal/instrument/InstrumentData$Type;->ThreadCheck:Lcom/facebook/internal/instrument/InstrumentData$Type;

    invoke-static {p2, p1}, Lcom/facebook/internal/instrument/InstrumentData$Builder;->build(Ljava/lang/Throwable;Lcom/facebook/internal/instrument/InstrumentData$Type;)Lcom/facebook/internal/instrument/InstrumentData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/internal/instrument/InstrumentData;->save()V

    return-void
.end method

.method public static final uiThreadViolationDetected(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "clazz"

    invoke-static {p0, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "methodName"

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "methodDesc"

    invoke-static {p2, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/facebook/internal/instrument/threadcheck/ThreadCheckHandler;->INSTANCE:Lcom/facebook/internal/instrument/threadcheck/ThreadCheckHandler;

    const-string v1, "@UiThread"

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/facebook/internal/instrument/threadcheck/ThreadCheckHandler;->log(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final workerThreadViolationDetected(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "clazz"

    invoke-static {p0, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "methodName"

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "methodDesc"

    invoke-static {p2, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/facebook/internal/instrument/threadcheck/ThreadCheckHandler;->INSTANCE:Lcom/facebook/internal/instrument/threadcheck/ThreadCheckHandler;

    const-string v1, "@WorkerThread"

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/facebook/internal/instrument/threadcheck/ThreadCheckHandler;->log(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
