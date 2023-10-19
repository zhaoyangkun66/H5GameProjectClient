.class public final Lcom/facebook/internal/instrument/InstrumentData$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/instrument/InstrumentData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/facebook/internal/instrument/InstrumentData$Builder;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/internal/instrument/InstrumentData$Builder;

    invoke-direct {v0}, Lcom/facebook/internal/instrument/InstrumentData$Builder;-><init>()V

    sput-object v0, Lcom/facebook/internal/instrument/InstrumentData$Builder;->INSTANCE:Lcom/facebook/internal/instrument/InstrumentData$Builder;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final build(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/internal/instrument/InstrumentData;
    .locals 2

    new-instance v0, Lcom/facebook/internal/instrument/InstrumentData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/facebook/internal/instrument/InstrumentData;-><init>(Ljava/lang/String;Ljava/lang/String;Lḓ/ᓭ/㺴/ᆻ;)V

    return-object v0
.end method

.method public static final build(Ljava/lang/Throwable;Lcom/facebook/internal/instrument/InstrumentData$Type;)Lcom/facebook/internal/instrument/InstrumentData;
    .locals 2

    const-string v0, "t"

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/facebook/internal/instrument/InstrumentData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/facebook/internal/instrument/InstrumentData;-><init>(Ljava/lang/Throwable;Lcom/facebook/internal/instrument/InstrumentData$Type;Lḓ/ᓭ/㺴/ᆻ;)V

    return-object v0
.end method

.method public static final build(Lorg/json/JSONArray;)Lcom/facebook/internal/instrument/InstrumentData;
    .locals 2

    const-string v0, "features"

    invoke-static {p0, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/facebook/internal/instrument/InstrumentData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/internal/instrument/InstrumentData;-><init>(Lorg/json/JSONArray;Lḓ/ᓭ/㺴/ᆻ;)V

    return-object v0
.end method

.method public static final load(Ljava/io/File;)Lcom/facebook/internal/instrument/InstrumentData;
    .locals 2

    const-string v0, "file"

    invoke-static {p0, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/facebook/internal/instrument/InstrumentData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/internal/instrument/InstrumentData;-><init>(Ljava/io/File;Lḓ/ᓭ/㺴/ᆻ;)V

    return-object v0
.end method
