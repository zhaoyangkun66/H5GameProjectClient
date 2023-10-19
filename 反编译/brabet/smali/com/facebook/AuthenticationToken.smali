.class public final Lcom/facebook/AuthenticationToken;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/AuthenticationToken$Companion;
    }
.end annotation


# static fields
.field public static final AUTHENTICATION_TOKEN_KEY:Ljava/lang/String; = "id_token"

.field private static final CLAIMS_KEY:Ljava/lang/String; = "claims"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/AuthenticationToken;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/facebook/AuthenticationToken$Companion;

.field private static final EXPECTED_NONCE_KEY:Ljava/lang/String; = "expected_nonce"

.field private static final HEADER_KEY:Ljava/lang/String; = "header"

.field private static final SIGNATURE_KEY:Ljava/lang/String; = "signature"

.field private static final TOKEN_STRING_KEY:Ljava/lang/String; = "token_string"


# instance fields
.field private final claims:Lcom/facebook/AuthenticationTokenClaims;

.field private final expectedNonce:Ljava/lang/String;

.field private final header:Lcom/facebook/AuthenticationTokenHeader;

.field private final signature:Ljava/lang/String;

.field private final token:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/facebook/AuthenticationToken$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/AuthenticationToken$Companion;-><init>(Lḓ/ᓭ/㺴/ᆻ;)V

    sput-object v0, Lcom/facebook/AuthenticationToken;->Companion:Lcom/facebook/AuthenticationToken$Companion;

    new-instance v0, Lcom/facebook/AuthenticationToken$Companion$CREATOR$1;

    invoke-direct {v0}, Lcom/facebook/AuthenticationToken$Companion$CREATOR$1;-><init>()V

    sput-object v0, Lcom/facebook/AuthenticationToken;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/facebook/internal/Validate;->INSTANCE:Lcom/facebook/internal/Validate;

    const-string v1, "token"

    invoke-static {v0, v1}, Lcom/facebook/internal/Validate;->notNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/AuthenticationToken;->token:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "expectedNonce"

    invoke-static {v0, v1}, Lcom/facebook/internal/Validate;->notNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/AuthenticationToken;->expectedNonce:Ljava/lang/String;

    const-class v0, Lcom/facebook/AuthenticationTokenHeader;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    const-string v1, "Required value was null."

    if-eqz v0, :cond_1

    check-cast v0, Lcom/facebook/AuthenticationTokenHeader;

    iput-object v0, p0, Lcom/facebook/AuthenticationToken;->header:Lcom/facebook/AuthenticationTokenHeader;

    const-class v0, Lcom/facebook/AuthenticationTokenClaims;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/facebook/AuthenticationTokenClaims;

    iput-object v0, p0, Lcom/facebook/AuthenticationToken;->claims:Lcom/facebook/AuthenticationTokenClaims;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "signature"

    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/AuthenticationToken;->signature:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v0, "token"

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "expectedNonce"

    invoke-static {p2, v1}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v2, Lcom/facebook/internal/Validate;->INSTANCE:Lcom/facebook/internal/Validate;

    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2, v1}, Lcom/facebook/internal/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lḓ/ḙ/ᓭ;->䅚(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object p1, p0, Lcom/facebook/AuthenticationToken;->token:Ljava/lang/String;

    iput-object p2, p0, Lcom/facebook/AuthenticationToken;->expectedNonce:Ljava/lang/String;

    new-instance p1, Lcom/facebook/AuthenticationTokenHeader;

    invoke-direct {p1, v1}, Lcom/facebook/AuthenticationTokenHeader;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/facebook/AuthenticationToken;->header:Lcom/facebook/AuthenticationTokenHeader;

    new-instance v3, Lcom/facebook/AuthenticationTokenClaims;

    invoke-direct {v3, v2, p2}, Lcom/facebook/AuthenticationTokenClaims;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/facebook/AuthenticationToken;->claims:Lcom/facebook/AuthenticationTokenClaims;

    invoke-virtual {p1}, Lcom/facebook/AuthenticationTokenHeader;->getKid()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, v2, v0, p1}, Lcom/facebook/AuthenticationToken;->isValidSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iput-object v0, p0, Lcom/facebook/AuthenticationToken;->signature:Ljava/lang/String;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid Signature"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid IdToken string"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 3

    const-string v0, "jsonObject"

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "token_string"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "jsonObject.getString(TOKEN_STRING_KEY)"

    invoke-static {v0, v1}, Lḓ/ᓭ/㺴/ಫ;->㚬(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/AuthenticationToken;->token:Ljava/lang/String;

    const-string v0, "expected_nonce"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "jsonObject.getString(EXPECTED_NONCE_KEY)"

    invoke-static {v0, v1}, Lḓ/ᓭ/㺴/ಫ;->㚬(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/AuthenticationToken;->expectedNonce:Ljava/lang/String;

    const-string v0, "signature"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "jsonObject.getString(SIGNATURE_KEY)"

    invoke-static {v0, v1}, Lḓ/ᓭ/㺴/ಫ;->㚬(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/AuthenticationToken;->signature:Ljava/lang/String;

    const-string v0, "header"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "claims"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    new-instance v1, Lcom/facebook/AuthenticationTokenHeader;

    const-string v2, "headerJSONObject"

    invoke-static {v0, v2}, Lḓ/ᓭ/㺴/ಫ;->㚬(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v0}, Lcom/facebook/AuthenticationTokenHeader;-><init>(Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcom/facebook/AuthenticationToken;->header:Lcom/facebook/AuthenticationTokenHeader;

    sget-object v0, Lcom/facebook/AuthenticationTokenClaims;->Companion:Lcom/facebook/AuthenticationTokenClaims$Companion;

    const-string v1, "claimsJSONObject"

    invoke-static {p1, v1}, Lḓ/ᓭ/㺴/ಫ;->㚬(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/facebook/AuthenticationTokenClaims$Companion;->createFromJSONObject$facebook_core_release(Lorg/json/JSONObject;)Lcom/facebook/AuthenticationTokenClaims;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/AuthenticationToken;->claims:Lcom/facebook/AuthenticationTokenClaims;

    return-void
.end method

.method public static final getCurrentAuthenticationToken()Lcom/facebook/AuthenticationToken;
    .locals 1

    sget-object v0, Lcom/facebook/AuthenticationToken;->Companion:Lcom/facebook/AuthenticationToken$Companion;

    invoke-virtual {v0}, Lcom/facebook/AuthenticationToken$Companion;->getCurrentAuthenticationToken()Lcom/facebook/AuthenticationToken;

    move-result-object v0

    return-object v0
.end method

.method private final isValidSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/facebook/internal/security/OidcSecurityUtil;->INSTANCE:Lcom/facebook/internal/security/OidcSecurityUtil;

    invoke-static {p4}, Lcom/facebook/internal/security/OidcSecurityUtil;->getRawKeyFromEndPoint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    if-nez p4, :cond_0

    return v0

    :cond_0
    invoke-static {p4}, Lcom/facebook/internal/security/OidcSecurityUtil;->getPublicKeyFromString(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object p4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1, p3}, Lcom/facebook/internal/security/OidcSecurityUtil;->verify(Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v0
.end method

.method public static final setCurrentAuthenticationToken(Lcom/facebook/AuthenticationToken;)V
    .locals 1

    sget-object v0, Lcom/facebook/AuthenticationToken;->Companion:Lcom/facebook/AuthenticationToken$Companion;

    invoke-virtual {v0, p0}, Lcom/facebook/AuthenticationToken$Companion;->setCurrentAuthenticationToken(Lcom/facebook/AuthenticationToken;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/facebook/AuthenticationToken;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-object v1, p0, Lcom/facebook/AuthenticationToken;->token:Ljava/lang/String;

    check-cast p1, Lcom/facebook/AuthenticationToken;

    iget-object v3, p1, Lcom/facebook/AuthenticationToken;->token:Ljava/lang/String;

    invoke-static {v1, v3}, Lḓ/ᓭ/㺴/ಫ;->உ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/facebook/AuthenticationToken;->expectedNonce:Ljava/lang/String;

    iget-object v3, p1, Lcom/facebook/AuthenticationToken;->expectedNonce:Ljava/lang/String;

    invoke-static {v1, v3}, Lḓ/ᓭ/㺴/ಫ;->உ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/facebook/AuthenticationToken;->header:Lcom/facebook/AuthenticationTokenHeader;

    iget-object v3, p1, Lcom/facebook/AuthenticationToken;->header:Lcom/facebook/AuthenticationTokenHeader;

    invoke-static {v1, v3}, Lḓ/ᓭ/㺴/ಫ;->உ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/facebook/AuthenticationToken;->claims:Lcom/facebook/AuthenticationTokenClaims;

    iget-object v3, p1, Lcom/facebook/AuthenticationToken;->claims:Lcom/facebook/AuthenticationTokenClaims;

    invoke-static {v1, v3}, Lḓ/ᓭ/㺴/ಫ;->உ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/facebook/AuthenticationToken;->signature:Ljava/lang/String;

    iget-object p1, p1, Lcom/facebook/AuthenticationToken;->signature:Ljava/lang/String;

    invoke-static {v1, p1}, Lḓ/ᓭ/㺴/ಫ;->உ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getClaims()Lcom/facebook/AuthenticationTokenClaims;
    .locals 1

    iget-object v0, p0, Lcom/facebook/AuthenticationToken;->claims:Lcom/facebook/AuthenticationTokenClaims;

    return-object v0
.end method

.method public final getExpectedNonce()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/AuthenticationToken;->expectedNonce:Ljava/lang/String;

    return-object v0
.end method

.method public final getHeader()Lcom/facebook/AuthenticationTokenHeader;
    .locals 1

    iget-object v0, p0, Lcom/facebook/AuthenticationToken;->header:Lcom/facebook/AuthenticationTokenHeader;

    return-object v0
.end method

.method public final getSignature()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/AuthenticationToken;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public final getToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/AuthenticationToken;->token:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/facebook/AuthenticationToken;->token:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/facebook/AuthenticationToken;->expectedNonce:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/facebook/AuthenticationToken;->header:Lcom/facebook/AuthenticationTokenHeader;

    invoke-virtual {v0}, Lcom/facebook/AuthenticationTokenHeader;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/facebook/AuthenticationToken;->claims:Lcom/facebook/AuthenticationTokenClaims;

    invoke-virtual {v0}, Lcom/facebook/AuthenticationTokenClaims;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/facebook/AuthenticationToken;->signature:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final toJSONObject$facebook_core_release()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/facebook/AuthenticationToken;->token:Ljava/lang/String;

    const-string v2, "token_string"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/facebook/AuthenticationToken;->expectedNonce:Ljava/lang/String;

    const-string v2, "expected_nonce"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/facebook/AuthenticationToken;->header:Lcom/facebook/AuthenticationTokenHeader;

    invoke-virtual {v1}, Lcom/facebook/AuthenticationTokenHeader;->toJSONObject$facebook_core_release()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "header"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/facebook/AuthenticationToken;->claims:Lcom/facebook/AuthenticationTokenClaims;

    invoke-virtual {v1}, Lcom/facebook/AuthenticationTokenClaims;->toJSONObject$facebook_core_release()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "claims"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/facebook/AuthenticationToken;->signature:Ljava/lang/String;

    const-string v2, "signature"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string v0, "dest"

    invoke-static {p1, v0}, Lḓ/ᓭ/㺴/ಫ;->㺴(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/AuthenticationToken;->token:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/AuthenticationToken;->expectedNonce:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/AuthenticationToken;->header:Lcom/facebook/AuthenticationTokenHeader;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/facebook/AuthenticationToken;->claims:Lcom/facebook/AuthenticationTokenClaims;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lcom/facebook/AuthenticationToken;->signature:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
