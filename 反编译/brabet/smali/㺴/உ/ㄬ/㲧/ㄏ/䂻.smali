.class public final synthetic L㺴/உ/ㄬ/㲧/ㄏ/䂻;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic உ:L㺴/உ/ㄬ/㲧/ㄏ/䂻;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, L㺴/உ/ㄬ/㲧/ㄏ/䂻;

    invoke-direct {v0}, L㺴/உ/ㄬ/㲧/ㄏ/䂻;-><init>()V

    sput-object v0, L㺴/உ/ㄬ/㲧/ㄏ/䂻;->உ:L㺴/உ/ㄬ/㲧/ㄏ/䂻;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/facebook/internal/instrument/InstrumentData;

    check-cast p2, Lcom/facebook/internal/instrument/InstrumentData;

    invoke-static {p1, p2}, Lcom/facebook/internal/instrument/crashreport/CrashHandler$Companion;->䂻(Lcom/facebook/internal/instrument/InstrumentData;Lcom/facebook/internal/instrument/InstrumentData;)I

    move-result p1

    return p1
.end method
